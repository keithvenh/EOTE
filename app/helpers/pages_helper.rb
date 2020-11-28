module PagesHelper

    def parse_dice(rolls)

        counts = count_dice(rolls)

        return counts

    end

    def count_dice(rolls)

        parsed_dice = {
            all: {
                positive: {
                    count: 0,
                    suc: 0,
                    adv: 0,
                    tri: 0,
                    blank: 0
                },
                negative: {
                    count: 0,
                    fai: 0,
                    thr: 0,
                    des: 0,
                    blank: 0
                }
            },
            y: {
                count: 0,
                suc: 0,
                adv: 0,
                tri: 0,
                blank: 0

            },
            g: {
                count: 0,
                suc: 0,
                adv: 0,
                blank: 0
            },
            b: {
                count: 0,
                suc: 0,
                adv: 0,
                blank: 0
            },
            r: {
                count: 0,
                fai: 0,
                thr: 0,
                des: 0,
                blank: 0
            },
            p: {
                count: 0,
                fai: 0,
                thr: 0,
                des: 0,
                blank: 0
            },
            k: {
                count: 0,
                fai: 0,
                thr: 0,
                des: 0,
                blank: 0
            },
            w: {
                count: 0,
                lsp: 0,
                dsp: 0
            },
        }

        rolls.each do |r|
            dice = r.dice.split('')
            results = r.dice_results.split(';')
            dice.each_with_index do |d, i|
                case d
                when 'y'
                    if results[i].length > 3
                        if results[i].length > 4
                            if results[i][0..2] == 'adv'
                                parsed_dice[:y][:adv] += 1
                                parsed_dice[:all][:positive][:adv] += 1
                            elsif results[i][0..2] == 'suc'
                                parsed_dice[:y][:suc] += 1
                                parsed_dice[:all][:positive][:suc] += 1
                            end

                            if results[i][3..5] == 'adv'
                                parsed_dice[:y][:adv] += 1
                                parsed_dice[:all][:positive][:adv] += 1
                            elsif results[i][3..5] == 'suc'
                                parsed_dice[:y][:suc] += 1
                                parsed_dice[:all][:positive][:suc] += 1
                            end
                        else
                            parsed_dice[:y][:blank] += 1
                            parsed_dice[:all][:positive][:blank] += 1
                        end
                    else
                        if results[i] == 'adv'
                            parsed_dice[:y][:adv] += 1
                            parsed_dice[:all][:positive][:adv] += 1
                        elsif results[i] == 'suc'
                            parsed_dice[:y][:suc] += 1
                            parsed_dice[:all][:positive][:suc] += 1
                        elsif results[i] == 'tri'
                            parsed_dice[:y][:tri] += 1
                            parsed_dice[:all][:positive][:tri] += 1
                        end
                    end
                    parsed_dice[:y][:count] += 1
                    parsed_dice[:all][:positive][:count] += 1
                when 'g'
                    if results[i].length > 3
                        if results[i].length > 4
                            if results[i][0..2] == 'adv'
                                parsed_dice[:g][:adv] += 1
                                parsed_dice[:all][:positive][:adv] += 1
                            elsif results[i][0..2] == 'suc'
                                parsed_dice[:g][:suc] += 1
                                parsed_dice[:all][:positive][:suc] += 1
                            end

                            if results[i][3..5] == 'adv'
                                parsed_dice[:g][:adv] += 1
                                parsed_dice[:all][:positive][:adv] += 1
                            elsif results[i][3..5] == 'suc'
                                parsed_dice[:g][:suc] += 1
                                parsed_dice[:all][:positive][:suc] += 1
                            end
                        else
                            parsed_dice[:g][:blank] += 1
                            parsed_dice[:all][:positive][:blank] += 1
                        end
                    else
                        if results[i] == 'adv'
                            parsed_dice[:g][:adv] += 1
                            parsed_dice[:all][:positive][:adv] += 1
                        elsif results[i] == 'suc'
                            parsed_dice[:g][:suc] += 1
                            parsed_dice[:all][:positive][:suc] += 1
                        end
                    end
                    parsed_dice[:g][:count] += 1
                    parsed_dice[:all][:positive][:count] += 1
                when 'b'
                    if results[i].length > 3
                        if results[i].length > 4
                            if results[i][0..2] == 'adv'
                                parsed_dice[:b][:adv] += 1
                                parsed_dice[:all][:positive][:adv] += 1
                            elsif results[i][0..2] == 'suc'
                                parsed_dice[:b][:suc] += 1
                                parsed_dice[:all][:positive][:suc] += 1
                            end

                            if results[i][3..5] == 'adv'
                                parsed_dice[:b][:adv] += 1
                                parsed_dice[:all][:positive][:adv] += 1
                            elsif results[i][3..5] == 'suc'
                                parsed_dice[:b][:suc] += 1
                                parsed_dice[:all][:positive][:suc] += 1
                            end
                        else
                            parsed_dice[:b][:blank] += 1
                            parsed_dice[:all][:positive][:blank] += 1
                        end
                    else
                        if results[i] == 'adv'
                            parsed_dice[:b][:adv] += 1
                            parsed_dice[:all][:positive][:adv] += 1
                        elsif results[i] == 'suc'
                            parsed_dice[:b][:suc] += 1
                            parsed_dice[:all][:positive][:suc] += 1
                        end
                    end
                    parsed_dice[:b][:count] += 1
                    parsed_dice[:all][:positive][:count] += 1
                when 'r'
                    if results[i].length > 3
                        if results[i].length > 4
                            if results[i][0..2] == 'thr'
                                parsed_dice[:r][:thr] += 1
                                parsed_dice[:all][:negative][:thr] += 1
                            elsif results[i][0..2] == 'fai'
                                parsed_dice[:r][:fai] += 1
                                parsed_dice[:all][:negative][:fai] += 1
                            end

                            if results[i][3..5] == 'thr'
                                parsed_dice[:r][:thr] += 1
                                parsed_dice[:all][:negative][:thr] += 1
                            elsif results[i][3..5] == 'fai'
                                parsed_dice[:r][:fai] += 1
                                parsed_dice[:all][:negative][:fai] += 1
                            end
                        else
                            parsed_dice[:r][:blank] += 1
                            parsed_dice[:all][:negative][:blank] += 1
                        end
                    else
                        if results[i] == 'thr'
                            parsed_dice[:r][:thr] += 1
                            parsed_dice[:all][:negative][:thr] += 1
                        elsif results[i] == 'fai'
                            parsed_dice[:r][:fai] += 1
                            parsed_dice[:all][:negative][:fai] += 1
                        elsif results[i] == 'des'
                            parsed_dice[:r][:des] += 1
                            parsed_dice[:all][:negative][:des] += 1
                        end
                    end
                    parsed_dice[:r][:count] += 1
                    parsed_dice[:all][:negative][:count] += 1
                when 'p'
                    if results[i].length > 3
                        if results[i].length > 4
                            if results[i][0..2] == 'thr'
                                parsed_dice[:p][:thr] += 1
                                parsed_dice[:all][:negative][:thr] += 1
                            elsif results[i][0..2] == 'fai'
                                parsed_dice[:p][:fai] += 1
                                parsed_dice[:all][:negative][:fai] += 1
                            end

                            if results[i][3..5] == 'thr'
                                parsed_dice[:p][:thr] += 1
                                parsed_dice[:all][:negative][:thr] += 1
                            elsif results[i][3..5] == 'fai'
                                parsed_dice[:p][:fai] += 1
                                parsed_dice[:all][:negative][:fai] += 1
                            end
                        else
                            parsed_dice[:p][:blank] += 1
                            parsed_dice[:all][:negative][:blank] += 1
                        end
                    else
                        if results[i] == 'thr'
                            parsed_dice[:p][:thr] += 1
                            parsed_dice[:all][:negative][:thr] += 1
                        elsif results[i] == 'fai'
                            parsed_dice[:p][:fai] += 1
                            parsed_dice[:all][:negative][:fai] += 1
                        end
                    end
                    parsed_dice[:p][:count] += 1
                    parsed_dice[:all][:negative][:count] += 1
                when 'k'
                    if results[i].length > 3
                        if results[i].length > 4
                            if results[i][0..2] == 'thr'
                                parsed_dice[:k][:thr] += 1
                                parsed_dice[:all][:negative][:thr] += 1
                            elsif results[i][0..2] == 'fai'
                                parsed_dice[:k][:fai] += 1
                                parsed_dice[:all][:negative][:fai] += 1
                            end

                            if results[i][3..5] == 'thr'
                                parsed_dice[:k][:thr] += 1
                                parsed_dice[:all][:negative][:thr] += 1
                            elsif results[i][3..5] == 'fai'
                                parsed_dice[:k][:fai] += 1
                                parsed_dice[:all][:negative][:fai] += 1
                            end
                        else
                            parsed_dice[:k][:blank] += 1
                            parsed_dice[:all][:negative][:blank] += 1
                        end
                    else
                        if results[i] == 'thr'
                            parsed_dice[:k][:thr] += 1
                            parsed_dice[:all][:negative][:thr] += 1
                        elsif results[i] == 'fai'
                            parsed_dice[:k][:fai] += 1
                            parsed_dice[:all][:negative][:fai] += 1
                        end
                    end
                    parsed_dice[:k][:count] += 1
                    parsed_dice[:all][:negative][:count] += 1
                when 'w'
                    parsed_dice[:w][:count] += 1
                end
            end
        end

        return parsed_dice

    end


end
