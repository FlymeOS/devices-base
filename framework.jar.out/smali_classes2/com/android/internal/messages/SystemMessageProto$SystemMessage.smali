.class public final Lcom/android/internal/messages/SystemMessageProto$SystemMessage;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "SystemMessageProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/messages/SystemMessageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemMessage"
.end annotation


# static fields
.field public static final NOTE_BAD_CHARGER:I = 0x2

.field public static final NOTE_GLOBAL_SCREENSHOT:I = 0x1

.field public static final NOTE_HIDDEN_NOTIFICATIONS:I = 0x5

.field public static final NOTE_HIGH_TEMP:I = 0x4

.field public static final NOTE_LOGOUT_USER:I = 0x3f3

.field public static final NOTE_PLUGIN:I = 0x6

.field public static final NOTE_POWER_LOW:I = 0x3

.field public static final NOTE_REMOVE_GUEST:I = 0x3f2

.field public static final NOTE_STORAGE_DISK:I = 0x5344534b

.field public static final NOTE_STORAGE_MOVE:I = 0x534d4f56

.field public static final NOTE_STORAGE_PRIVATE:I = 0x53505256

.field public static final NOTE_STORAGE_PUBLIC:I = 0x53505542

.field public static final NOTE_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/android/internal/messages/SystemMessageProto$SystemMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 45
    invoke-virtual {p0}, Lcom/android/internal/messages/SystemMessageProto$SystemMessage;->clear()Lcom/android/internal/messages/SystemMessageProto$SystemMessage;

    .line 44
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/messages/SystemMessageProto$SystemMessage;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/android/internal/messages/SystemMessageProto$SystemMessage;->_emptyArray:[Lcom/android/internal/messages/SystemMessageProto$SystemMessage;

    if-nez v0, :cond_1

    .line 32
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/android/internal/messages/SystemMessageProto$SystemMessage;->_emptyArray:[Lcom/android/internal/messages/SystemMessageProto$SystemMessage;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/messages/SystemMessageProto$SystemMessage;

    sput-object v0, Lcom/android/internal/messages/SystemMessageProto$SystemMessage;->_emptyArray:[Lcom/android/internal/messages/SystemMessageProto$SystemMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 39
    :cond_1
    sget-object v0, Lcom/android/internal/messages/SystemMessageProto$SystemMessage;->_emptyArray:[Lcom/android/internal/messages/SystemMessageProto$SystemMessage;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/messages/SystemMessageProto$SystemMessage;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/android/internal/messages/SystemMessageProto$SystemMessage;

    invoke-direct {v0}, Lcom/android/internal/messages/SystemMessageProto$SystemMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/messages/SystemMessageProto$SystemMessage;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/messages/SystemMessageProto$SystemMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/messages/SystemMessageProto$SystemMessage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/android/internal/messages/SystemMessageProto$SystemMessage;

    invoke-direct {v0}, Lcom/android/internal/messages/SystemMessageProto$SystemMessage;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/messages/SystemMessageProto$SystemMessage;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/messages/SystemMessageProto$SystemMessage;
    .locals 1

    .prologue
    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/messages/SystemMessageProto$SystemMessage;->cachedSize:I

    .line 50
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/messages/SystemMessageProto$SystemMessage;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/messages/SystemMessageProto$SystemMessage;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/messages/SystemMessageProto$SystemMessage;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 59
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_0

    .line 63
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    return-object p0

    .line 61
    :pswitch_0
    return-object p0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
