CXX = g++
CXXFLAGS = -std=c++17 -g -Wall
TARGET = solution
SOURCE = solution.cpp

all: $(TARGET)

$(TARGET): $(SOURCE)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SOURCE)

clean:
	rm -f $(TARGET) game_output.csv game_input.csv

test: $(TARGET)
	pytest test_game.py -v

.PHONY: all clean test
