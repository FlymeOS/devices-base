.class public Lcom/android/server/wifi/anqp/RawByteElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "RawByteElement.java"


# instance fields
.field private final mPayload:[B


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p2, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    .line 13
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/wifi/anqp/RawByteElement;->mPayload:[B

    .line 14
    iget-object v0, p0, Lcom/android/server/wifi/anqp/RawByteElement;->mPayload:[B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 11
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/wifi/anqp/RawByteElement;->mPayload:[B

    return-object v0
.end method
