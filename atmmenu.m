% ATM Menu Simulation in MATLAB

% Initialize balance
balance = 1000;

% Start the menu loop
while true
    % Display the menu
    fprintf('\n========== ATM MENU ==========\n');
    fprintf('1. Deposit\n');
    fprintf('2. Withdraw\n');
    fprintf('3. Balance Inquiry\n');
    fprintf('4. Exit\n');
    fprintf('==============================\n');
    
    % Ask user for choice
    choice = input('Please select an option (1-4): ');
    
    switch choice
        case 1  % Deposit
            amount = input('Enter the amount to deposit: ');
            if amount > 0
                balance = balance + amount;
                fprintf('%.2f deposited successfully. New balance: %.2f\n', amount, balance);
            else
                fprintf('Invalid amount. Please enter a positive number.\n');
            end
            
        case 2  % Withdraw
            amount = input('Enter the amount to withdraw: ');
            if amount > 0
                if amount <= balance
                    balance = balance - amount;
                    fprintf('%.2f withdrawn successfully. New balance: %.2f\n', amount, balance);
                else
                    fprintf('Insufficient funds. Your current balance is %.2f\n', balance);
                end
            else
                fprintf('Invalid amount. Please enter a positive number.\n');
            end
            
        case 3  % Balance Inquiry
            fprintf('Your current balance is: %.2f\n', balance);
            
        case 4  % Exit
            fprintf('Thank you for using our ATM service. Goodbye!\n');
            break;
            
        otherwise
            fprintf('Invalid option. Please select a number between 1 and 4.\n');
    end
end
