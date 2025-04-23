% Student Marks and Grading Program

% Initialize array to store marks
marks = zeros(1, 5);

% Input marks and display grade
for i = 1:5
    mark = input(sprintf('Enter mark for student %d (out of 100): ', i));
    
    % Input validation
    while mark < 0 || mark > 100
        fprintf('Invalid mark. Please enter a value between 0 and 100.\n');
        mark = input(sprintf('Enter mark for student %d (out of 100): ', i));
    end
    
    marks(i) = mark;
    
    % Determine grade
    if mark >= 90
        grade = 'A';
    elseif mark >= 80
        grade = 'B';
    elseif mark >= 70
        grade = 'C';
    elseif mark >= 60
        grade = 'D';
    else
        grade = 'F';
    end
    
    fprintf('Student %d scored %d and received grade: %s\n', i, mark, grade);
end

% Menu loop
while true
    fprintf('\n========= MENU =========\n');
    fprintf('1. Show all marks as a bar chart\n');
    fprintf('2. Show average marks\n');
    fprintf('3. Exit\n');
    fprintf('========================\n');
    
    choice = input('Enter your choice (1-3): ');
    
    switch choice
        case 1
            % Display bar chart
            figure;
            bar(marks);
            title('Student Marks');
            xlabel('Student Number');
            ylabel('Marks');
            ylim([0 100]);
            grid on;
            
        case 2
            % Display average marks
            avg = mean(marks);
            fprintf('The average mark is: %.2f\n', avg);
            
        case 3
            % Exit
            fprintf('Thank you for using the program. Goodbye!\n');
            break;
            
        otherwise
            fprintf('Invalid choice. Please select a number between 1 and 3.\n');
    end
end
