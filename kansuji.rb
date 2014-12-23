# -*- coding: utf-8 -*-

class Kansuji
  KETA_UNIT = 10000
  KETA = ['', '万', '億', '兆']
  MINI_KETA = ['', '十', '百', '千']
  NUMS = [ "〇", "一", "ニ", "三", "四", "五", "六", "七", "八", "九" ]

  def Kansuji.encode (num)
    units = []
    while (num >= KETA_UNIT)
      rate = num % KETA_UNIT
      num = (num - rate) / KETA_UNIT
      units.unshift(to_kan(rate))
    end

    units.unshift(to_kan(num))

    buf = []
    index = 0
    units.reverse.each do |unit|
      str = unit
      if (KETA[index])
        str += KETA[index]
      end
      buf.unshift str
      index += 1
    end

    return buf.join('')
  end

  def Kansuji.to_kan (num)
    buf = []
    index = 0
    num.to_s.split('').reverse.each do |c|
      if c.to_i > 0
        str = NUMS[c.to_i]
        if (MINI_KETA[index])
          str += MINI_KETA[index]
        end
        buf.unshift str
      end
      index += 1
    end
    return buf.join('')
  end
end
