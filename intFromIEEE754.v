module intFromIEEE754(y, m);

    input wire [63:0] y;
    output reg [15:0] m;
	 reg [31:0] exp, mantissa ;

    always @(*) begin
        // Получаем экспоненту и смещаем ее на 52 бита, чтобы получить мантиссу
        // Это позволит нам получить целую часть числа в y
        exp = (y[62:52] - 1023) + 52;
        if (exp < 0) begin
            m <= 0; // Если экспонента отрицательная, то целая часть равна нулю
        end else if (exp > 63) begin
            m <= 16'b1111111111111111; // Если экспонента больше 63, то целая часть равна максимальному значению 16-битного числа
        end else begin
            // Получаем мантиссу и сдвигаем ее на нужное количество битов,
            // чтобы получить целую часть числа в y
            mantissa = y[51:0];
            m <= mantissa >> (52 - exp);
        end
    end

endmodule