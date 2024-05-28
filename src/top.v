module top 
(
    input       clk     ,
    input       rst_n   ,

    output      led     
);

reg     [7:0]   cnt;
reg     [7:0]   cnt1;
reg     [7:0]   cnt2;

always @( posedge clk )
begin
    if ( !rst_n )
    begin
        cnt <= 8'd0;
    end
    else
    begin
        cnt <=cnt + 8'd1;
    end
end

always @ ( * ) 
begin
    cnt1 <= cnt1 + 8'd1;
end

always @( posedge clk or negedge rst_n )
begin
    if ( !rst_n )
    begin
        cnt2 <= 8'd0;
    end
    else
    begin
        cnt2 <= cnt2 + 8'd1;
    end
end

endmodule
