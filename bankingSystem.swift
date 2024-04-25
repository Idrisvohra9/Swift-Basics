class BankAccount {
    var balance: Double
    let accountNumber: Int
    
    init(balance: Double, accountNumber: Int) {
        self.balance = balance
        self.accountNumber = accountNumber
    }
    
    func deposit(amount: Double) {
        balance += amount
        print("Deposited \(amount)$ to account \(accountNumber). New balance: \(balance)$")
    }
    
    func withdraw(amount: Double) {
        guard balance >= amount else {
            print("Insufficient funds in account \(accountNumber) to withdraw \(amount)$")
            return
        }
        balance -= amount
        print("Withdrawn \(amount)$ from account \(accountNumber). New balance: \(balance)$")
    }
    
    func transfer(amount: Double, to account: BankAccount) {
        guard balance >= amount else {
            print("Insufficient funds in account \(accountNumber) to transfer \(amount)$")
            return
        }
        withdraw(amount: amount)
        account.deposit(amount: amount)
        print("Transferred \(amount)$ from account \(accountNumber) to account \(account.accountNumber)")
    }
}

// Usage:
let account1 = BankAccount(balance: 1000.0, accountNumber: 101)
let account2 = BankAccount(balance: 500.0, accountNumber: 102)

account1.deposit(amount: 200.0)
account1.withdraw(amount: 50.0)
account1.transfer(amount: 300.0, to: account2)