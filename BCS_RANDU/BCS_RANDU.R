# set a seed here or inside the RANDU function seed = 1

# Implementation of the RANDU generator (with seed=1)
RANDU = function(n, seed = 1) {
    # predefine constants
    U = NULL
    a = 2^16 + 3
    m = 2^31
    for (i in 1:n) {
        seed = (a * seed)%%m
        U[i] = seed/m  # normalize the values to [0,1]
    }
    print(U)
}

# Run the generator four times for 4 (insufficiently) random numbers
RANDU(4)
