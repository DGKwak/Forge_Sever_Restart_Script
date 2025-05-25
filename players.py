import os

if __name__ == "__main__":
    file = '/path to grep_result.txt'
    
    with open(file, 'r') as f:
        lines = f.readlines()
    
    f.close()
    
    line = lines[1].strip().split(': ')
    print(line)
    
    playes = line[-1].split(', ')
    print(playes)
    
    with open('players.txt', 'w') as f:
        for player in playes:
            f.write(player + '\n')
    f.close()