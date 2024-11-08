// UC2_H2

module UC2_H2(
    input w_read3,
    input w_write3,
    input w_read4,
    input w_write4,
    input w_read5,
    input w_write5,

    input r_read3,
    input r_write3,
    input r_read4,
    input r_write4,
    input r_read5,
    input r_write5,   

    input [5:0]busA3,
    input [5:0]busC4,
    input [5:0]busC5,

    output reg H2
);

always @(
    w_read3, w_write3, r_read3, r_write3, busA3,
    w_read4, w_write4, r_read4, r_write4, busC4,
    w_read5, w_write5, r_read5, r_write5, busC5
)   begin
    if(w_read3 && (w_write4 || w_write5))
        H2 <= 1;
    else if(r_read3 && ( (r_write4 && busA3==busC4) || (r_write5 && busA3==busC5) ))
        H2 <= 1;
    else
        H2 <= 0;
end
endmodule
