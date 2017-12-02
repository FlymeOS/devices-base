.class public Lcom/android/server/wifi/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field static final ASCII_PRINTABLE_MAX:B = 0x7et

.field static final ASCII_PRINTABLE_MIN:B = 0x20t


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAsciiPrintable([B)Z
    .locals 6
    .param p0, "byteArray"    # [B

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return v5

    .line 30
    :cond_0
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_3

    aget-byte v0, p0, v1

    .line 31
    .local v0, "b":B
    packed-switch v0, :pswitch_data_0

    .line 41
    :pswitch_0
    const/16 v4, 0x20

    if-lt v0, v4, :cond_1

    const/16 v4, 0x7e

    if-le v0, v4, :cond_2

    .line 42
    :cond_1
    return v2

    .line 30
    :cond_2
    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "b":B
    :cond_3
    return v5

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
