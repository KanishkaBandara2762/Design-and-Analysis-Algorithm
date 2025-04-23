% Student Club Voting System with Visualization

% Step 1: Prompt for total number of voters
numVoters = input('Enter the total number of voters: ');

% Initialize vote counters for 4 candidates
votes = zeros(1, 4); % Index 1 = A, 2 = B, 3 = C, 4 = D

% Step 2: Collect votes
fprintf('\nVoting Menu:\n');
fprintf('1. Candidate A\n');
fprintf('2. Candidate B\n');
fprintf('3. Candidate C\n');
fprintf('4. Candidate D\n');

for i = 1:numVoters
    choice = input(sprintf('Voter %d, enter your choice (1-4): ', i));
    switch choice
        case 1
            votes(1) = votes(1) + 1;
        case 2
            votes(2) = votes(2) + 1;
        case 3
            votes(3) = votes(3) + 1;
        case 4
            votes(4) = votes(4) + 1;
        otherwise
            fprintf('Invalid vote! Vote not counted.\n');
    end
end

% Step 3: Display vote counts
candidateNames = {'Candidate A', 'Candidate B', 'Candidate C', 'Candidate D'};
fprintf('\n--- Vote Counts ---\n');
for i = 1:4
    fprintf('%s: %d votes\n', candidateNames{i}, votes(i));
end

% Determine the winner
[maxVotes, winnerIndex] = max(votes);
% Check if there's a tie
if sum(votes == maxVotes) > 1
    fprintf('Result: It''s a tie!\n');
else
    fprintf('Winner: %s with %d votes!\n', candidateNames{winnerIndex}, maxVotes);
end

% Step 4: Visualization Menu
while true
    fprintf('\n--- Result Visualization Menu ---\n');
    fprintf('1. Show Bar Chart of Votes\n');
    fprintf('2. Show Pie Chart of Votes\n');
    fprintf('3. Show Scatter Plot (Creative Visualization)\n');
    fprintf('4. Exit\n');
    
    option = input('Enter your choice (1-4): ');
    
    switch option
        case 1 % Bar Chart
            figure;
            bar(votes, 'FaceColor', 'cyan');
            set(gca, 'xticklabel', candidateNames);
            title('Vote Count - Bar Chart');
            xlabel('Candidates');
            ylabel('Votes');
            grid on;
            
        case 2 % Pie Chart
            figure;
            pie(votes, candidateNames);
            title('Vote Proportions - Pie Chart');
            
        case 3 % Scatter Plot
            figure;
            scatter(1:4, votes, 100, 'filled');
            text(1:4, votes+0.5, string(votes), 'HorizontalAlignment', 'center');
            set(gca, 'xtick', 1:4, 'xticklabel', candidateNames);
            title('Vote Distribution - Scatter Plot');
            xlabel('Candidates');
            ylabel('Votes');
            grid on;
            
        case 4 % Exit
            fprintf('Thank you for participating in the election!\n');
            break;
            
        otherwise
            fprintf('Invalid option. Please select from 1 to 4.\n');
    end
end
