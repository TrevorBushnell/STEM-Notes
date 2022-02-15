import numpy as np

def get_column(table, header, col_name):
    col_index = header.index(col_name)
    col = []
    for row in table:
        value = row[col_index]
        if value != "NA":
            col.append(value)
    return col 

def get_frequencies(table, header, col_name):
    col = get_column(table, header, col_name)
    col.sort() # inplace 
    # parallel lists
    values = []
    counts = []
    for value in col:
        if value in values: # seen it before
            counts[-1] += 1 # okay because sorted
        else: # haven't seen it before
            values.append(value)
            counts.append(1)

    return values, counts

def dummy_function():
    print('poop')

def dummy_function_2():
    print('YOOOOOOOOOOOOOOOOO')

def groupby(table, header, groupby_col_name):
    groupby_col_index = header.index(groupby_col_name)
    groupby_col = get_column(table, header, groupby_col_name)
    group_names = sorted(list(set(groupby_col)))
    group_subtables = [[] for _ in group_names]

    for row in table:
        groupby_val = row[groupby_col_index]
        groupby_val_subtable_index = group_names.index(groupby_val)
        group_subtables[groupby_val_subtable_index].append(row.copy())

    return group_names, group_subtables

def compute_equal_width_cutoffs(values, num_bins):
    values_range = max(values) - min(values)
    bin_width = values_range / num_bins # this is a float!
    # since bin_width is a float, we should use np.arange() instead
    cutoffs = list(np.arange(min(values), max(values), bin_width))
    cutoffs.append(max(values)) # this eliminates the propagation of round-off error
    # if app allows, we should convert to int or optionally round them
    cutoffs = [round(cutoff, 2) for cutoff in cutoffs]
    return cutoffs

def compute_bin_frequencies(values, cutoffs):
    freqs = [0 for _ in range(len(cutoffs) - 1)] # because N+1 cutoffs

    for value in values:
        if value == max(values):
            freqs[-1] += 1 # add 1 to the last bin count
        else:
            for i in range(len(cutoffs) - 1):
                if cutoffs[i] <= value < cutoffs[i + 1]:
                    freqs[i] += i # add 1 to this bin defined by [cutoffs[i], cutoffs[i+1])
    return freqs

def compute_linear_regression(x, y):
    mean_x = np.mean(x)
    mean_y = np.mean(y)

    num = sum([(x[i] - mean_x) * (y[i] - mean_y) for i in range(len(x))])
    den = sum([(x[i] - mean_x)**2 for i in range(len(x))])
    m = num / den

    b = mean_y - m * mean_x

    return m, b