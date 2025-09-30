module coin::RYN;
use sui::coin;
public struct RYN has drop {}


fun init(witness: RYN ,  ctx: &mut TxContext) {
    let (treasury , metadata ) = coin::create_currency (
        witness , 9 , b"RYN" , b"ryn" , 
        b"" , option::none() , ctx 


    );

    transfer::public_share_object(metadata);
    transfer::public_transfer(treasury, ctx.sender()) 

}