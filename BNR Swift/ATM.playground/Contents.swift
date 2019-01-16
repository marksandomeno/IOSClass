import Cocoa

func inputString() -> String {
    
    let keyboard = NSFileHandle.fileHandleWithStandardInput()
    let inputData = keyboard.availableData
    
    return NSString(data: inputData, encoding:NSUTF8StringEncoding) as! String
}



func inputInteger() -> Int {
    
    let keyboard = NSFileHandle.fileHandleWithStandardInput()
    let inputData = keyboard.availableData
    let intData = (NSString(data: inputData, encoding:NSUTF8StringEncoding))
    
    return ((intData)?.integerValue)!
}



var account: Int = 0

var operation: String = "x"

var balance: Int = 0

var deposit: Int = 0

var withdraw: Int = 0

print("Welcome to the ATM. Please enter either your savings or checking account number.")

account = inputInteger() //You have to enter either 12345 or 67890

switch account {
    
case 12345:
    balance = 2000
    
    print("Your starting balance is \(balance).")
    print("What do you want to do today? Enter 'D' for Deposit, 'W' for Withdrawl.")
        
        operation = inputString()
        
        if operation == "D" || operation == "d" {
        
            print("Enter the amount to deposit.")
    
            deposit = inputInteger()
    
            balance += deposit
    
            print("You deposited \(deposit). Your balance is now \(balance).")
    
        } else if operation == "W" || operation == "w" {
    
            print("Enter the amount to withdraw.")
            
            switch (balance < withdraw && balance >=  0 ? "Failure" :
                "Success")  {
                
            case "Failure":
                print("You cannot withdraw \(withdraw) because you only have \(balance) in your account.")
                
            case "Success":
                
                balance -= withdraw
                print("You have withdrawn \(withdraw). Your balance is now \(balance).")
                
            default:
                print("You have entered an invalid selection.")
    
            }
            
    }

    
case 67890:
    balance = 50000
            print("Your starting balance is \(balance).")
            sleep(2)
            print("What do you want to do today? Enter 'D' for Deposit, 'W' for Withdrawl.")
            
            operation = inputString()
            
            if operation == "D" || operation == "d" {
                
                print("Enter the amount to deposit.")
                
                deposit = inputInteger()
                
                balance += deposit
                
                print("You deposited \(deposit). Your balance is now \(balance).")
                
            } else if operation == "W" || operation == "w" {
                
                print("Enter the amount to withdraw.")
                
                switch (balance < withdraw && balance >=  0 ? "Failure" :
                    "Success")  {
                    
                case "Failure":
                    print("You cannot withdraw \(withdraw) because you only have \(balance) in your account.")
                    
                case "Success":
                    balance -= withdraw
                    print("You have withdrawn \(withdraw). Your balance is now \(balance).")
                
                default:
                    print("You have entered an invalid selection")
                }
                
    }
    
    
default:
    print ("Invalid account number.")
    
}


