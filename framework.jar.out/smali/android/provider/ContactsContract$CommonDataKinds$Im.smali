.class public final Landroid/provider/ContactsContract$CommonDataKinds$Im;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Im"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/im"

.field public static final CUSTOM_PROTOCOL:Ljava/lang/String; = "data6"

.field public static final PROTOCOL:Ljava/lang/String; = "data5"

.field public static final PROTOCOL_AIM:I = 0x0

.field public static final PROTOCOL_CUSTOM:I = -0x1

.field public static final PROTOCOL_GOOGLE_TALK:I = 0x5

.field public static final PROTOCOL_ICQ:I = 0x6

.field public static final PROTOCOL_JABBER:I = 0x7

.field public static final PROTOCOL_MSN:I = 0x1

.field public static final PROTOCOL_NETMEETING:I = 0x8

.field public static final PROTOCOL_QQ:I = 0x4

.field public static final PROTOCOL_SKYPE:I = 0x3

.field public static final PROTOCOL_YAHOO:I = 0x2

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WORK:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 6694
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6697
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v0

    .line 6698
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 6695
    .end local v0    # "labelRes":I
    :cond_1
    return-object p2
.end method

.method public static final getProtocolLabelResource(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 6673
    packed-switch p0, :pswitch_data_0

    .line 6683
    const v0, 0x1040270

    return v0

    .line 6674
    :pswitch_0
    const v0, 0x1040271

    return v0

    .line 6675
    :pswitch_1
    const v0, 0x1040272

    return v0

    .line 6676
    :pswitch_2
    const v0, 0x1040273

    return v0

    .line 6677
    :pswitch_3
    const v0, 0x1040274

    return v0

    .line 6678
    :pswitch_4
    const v0, 0x1040275

    return v0

    .line 6679
    :pswitch_5
    const v0, 0x1040276

    return v0

    .line 6680
    :pswitch_6
    const v0, 0x1040277

    return v0

    .line 6681
    :pswitch_7
    const v0, 0x1040278

    return v0

    .line 6682
    :pswitch_8
    const v0, 0x1040279

    return v0

    .line 6673
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 6660
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6663
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getTypeLabelResource(I)I

    move-result v0

    .line 6664
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 6661
    .end local v0    # "labelRes":I
    :cond_1
    return-object p2
.end method

.method public static final getTypeLabelResource(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 6645
    packed-switch p0, :pswitch_data_0

    .line 6649
    const v0, 0x104026c

    return v0

    .line 6646
    :pswitch_0
    const v0, 0x104026d

    return v0

    .line 6647
    :pswitch_1
    const v0, 0x104026e

    return v0

    .line 6648
    :pswitch_2
    const v0, 0x104026f

    return v0

    .line 6645
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
