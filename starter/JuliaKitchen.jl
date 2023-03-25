print("Please enter name: ")
name = readline()
println("Hello $name")

function greetings(name)
    if lowercase(name) == "ardnys"
        println("Press 1 for MENU")
        println("Press 2 for BEVERAGES")
        println("Press 3 to EXIT")
    else
        println("What would you like to do $name")
        println("Press 1 to get chips")
        println("Press 2 to get tea")
        println("Press 3 to exit")
    end

    choice = readline()
    return choice
end

function foodSupply()
    for (k,v) in food_menu
        println("Key: $k -> Food Item: $v")
    end

    print("Enter your desired food key: ")
    food_choice_key = readline()
    if haskey(food_menu, food_choice_key)
        food_choice = get(food_menu, food_choice_key, "invalid key")
        println("Your $food_choice is getting prepared. Please proceed")
    else
        println("no such key, please enter valid key")
        food_choice_key = readline()
        food_choice = get(food_menu, food_choice_key, "invalid key")
        println("Your $food_choice is getting prepared. Please proceed")
    end
    return food_choice
end

function beverageFridge(bev_add_get)
    if bev_add_get == "G"
        for (bev_idx, bev_val) in enumerate(beverage_arr)
            println("Press $bev_idx for $bev_val")
        end
        print("Enter desired drink num: ")
        bev_choice = readline()
        bev_ready = beverage_arr[parse(Int, bev_choice)]
        println("Here, a $bev_ready")
    elseif bev_add_get == "A"
        for (bev_idx, bev_val) in enumerate(beverage_arr)
            println("Press $bev_idx for $bev_val")
        end
        bev_temp_arr = String[""]
        print("Enter the beverage that you want to add: ")
        bev_added = readline()
        bev_temp_arr[1] = bev_added
        append!(beverage_arr, bev_temp_arr)
        pop!(bev_temp_arr)
        println("Beverage added to the fridge. Beverage list is updated")
        for (bev_idx, bev_val) in enumerate(beverage_arr)
            println("Index $bev_idx for $bev_val")
        end
    end
end    

food_menu = Dict(
    "1"=>"chicken",
    "2"=>"fish en chips",
    "3"=>"nice hot soup",
    "4"=>"sandwich",
    "5"=>"eg",
    "6"=>"cake",
)
beverage_arr = String["Green Tea", "Black Tea", "Jasmine Tea", "Coffee", "Hot Choco", "Salep", "Wo'ah", "Drain Opener"]

while true
    if lowercase(name) == "ardnys"
        action = greetings(name)
        if action == "1"
            super_user_food = foodSupply()
        elseif action == "2"
            print("Press G to get, Press A to add: ")
            bev_add_get = readline()
            beverageFridge(bev_add_get)
        else
            break
        end
    else
        action = greetings(name)
        if action == "1"
            user_food = get(food_menu, 1, "chicken")
            println("Please enjoy the tour until we prepare your delicious $user_food") 
        elseif action == "2"
            user_tea_roll = rand((1, 2, 3))
            user_beverage = beverage_arr[user_tea_roll]
            println("Enjoy your hot cup of $user_beverage")
        else
            break
        end
    end
end

println("---END OF PROGRAM---")