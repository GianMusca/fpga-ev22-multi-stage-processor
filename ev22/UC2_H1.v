// UC2_H1

module UC2_H1(
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

    input H2,

    input PULL,
    input PUSH,
    input PULL3,
    input PUSH3,

    input condJ,

    output reg H1
);

always @(
    w_read3, w_write3, r_read3, r_write3,
    w_read4, w_write4, r_read4, r_write4,
    w_read5, w_write5, r_read5, r_write5,
    H2, PULL, PUSH, PULL3, PULL3, condJ
)   begin
    if(H2)
        H1 <= 1;
    else if(PULL && (PULL3 || PUSH3))
        H1 <= 1;
    else if(condJ && (w_write3 || w_write4 || w_write5 || r_write3 || r_write4 || r_write5))
        H1 <= 1;
    else
        H1 <= 0;
end
endmodule
