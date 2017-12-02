.class public Lcom/android/server/wifi/util/InformationElementUtil$WifiMode;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiMode"
.end annotation


# static fields
.field public static final MODE_11A:I = 0x1

.field public static final MODE_11AC:I = 0x5

.field public static final MODE_11B:I = 0x2

.field public static final MODE_11G:I = 0x3

.field public static final MODE_11N:I = 0x4

.field public static final MODE_UNDEFINED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineMode(IIZZZ)I
    .locals 2
    .param p0, "frequency"    # I
    .param p1, "maxRate"    # I
    .param p2, "foundVht"    # Z
    .param p3, "foundHt"    # Z
    .param p4, "foundErp"    # Z

    .prologue
    const/4 v1, 0x3

    .line 627
    if-eqz p2, :cond_0

    .line 628
    const/4 v0, 0x5

    return v0

    .line 629
    :cond_0
    if-eqz p3, :cond_1

    .line 630
    const/4 v0, 0x4

    return v0

    .line 631
    :cond_1
    if-eqz p4, :cond_2

    .line 632
    return v1

    .line 633
    :cond_2
    const/16 v0, 0xbb8

    if-ge p0, v0, :cond_4

    .line 634
    const v0, 0x16e3600

    if-ge p1, v0, :cond_3

    .line 635
    const/4 v0, 0x2

    return v0

    .line 637
    :cond_3
    return v1

    .line 640
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 648
    packed-switch p0, :pswitch_data_0

    .line 660
    const-string/jumbo v0, "MODE_UNDEFINED"

    return-object v0

    .line 650
    :pswitch_0
    const-string/jumbo v0, "MODE_11A"

    return-object v0

    .line 652
    :pswitch_1
    const-string/jumbo v0, "MODE_11B"

    return-object v0

    .line 654
    :pswitch_2
    const-string/jumbo v0, "MODE_11G"

    return-object v0

    .line 656
    :pswitch_3
    const-string/jumbo v0, "MODE_11N"

    return-object v0

    .line 658
    :pswitch_4
    const-string/jumbo v0, "MODE_11AC"

    return-object v0

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
