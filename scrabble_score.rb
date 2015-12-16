class Scrabble

	attr_reader :word

	def initialize(word, bonus = :single)
		@word = word
		@bonus = bonus
	end


	def score
		return 0 if word.nil? || word == '' || word.to_s.chars.any? { |char| POINTS[normalize(char)].nil? }
		letters = word.split('').map { |e| normalize(e) }
		letters.reduce(0) do |memo, letter|
			memo += POINTS[letter] * POWERUPS[@bonus]
		end
	end

	def self.score(word)
		new(word).score
	end

	private

		POINTS = {
			a: 1, b: 3, c: 3, d: 2, e: 1, f: 4,
			g: 2, h: 4, i: 1, j: 8, k: 5, l: 1,
			m: 3, n: 1, o: 1, p: 3, q: 10, r: 1,
			s: 1, t: 1, u: 1, v: 4, w: 4, x: 8,
			y: 4, z: 10,
		}

		POWERUPS = {
			single: 1,
			double: 2,
			triple: 3
		}

		def normalize(letter)
			letter.downcase.to_sym
		end

end