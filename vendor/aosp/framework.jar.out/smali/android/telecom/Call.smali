.class public final Landroid/telecom/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Call$Listener;,
        Landroid/telecom/Call$Details;
    }
.end annotation


# static fields
.field public static final AVAILABLE_PHONE_ACCOUNTS:Ljava/lang/String; = "selectPhoneAccountAccounts"

.field public static final STATE_ACTIVE:I = 0x4

.field public static final STATE_CONNECTING:I = 0x9

.field public static final STATE_DIALING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x7

.field public static final STATE_DISCONNECTING:I = 0xa

.field public static final STATE_HOLDING:I = 0x3

.field public static final STATE_NEW:I = 0x0

.field public static final STATE_PRE_DIAL_WAIT:I = 0x8

.field public static final STATE_RINGING:I = 0x2


# instance fields
.field private mCannedTextResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenCached:Z

.field private final mChildrenIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mDetails:Landroid/telecom/Call$Details;

.field private final mInCallAdapter:Landroid/telecom/InCallAdapter;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mParentId:Ljava/lang/String;

.field private final mPhone:Landroid/telecom/Phone;

.field private mRemainingPostDialSequence:Ljava/lang/String;

.field private mState:I

.field private final mTelecomCallId:Ljava/lang/String;

.field private final mUnmodifiableChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnmodifiableConferenceableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoCall:Landroid/telecom/InCallService$VideoCall;


# direct methods
.method constructor <init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;)V
    .locals 2
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "telecomCallId"    # Ljava/lang/String;
    .param p3, "inCallAdapter"    # Landroid/telecom/InCallAdapter;

    .prologue
    const/4 v1, 0x0

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    .line 543
    iget-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    .line 544
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    .line 545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    .line 546
    iget-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    .line 550
    iput-object v1, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    .line 552
    iput-object v1, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    .line 803
    iput-object p1, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    .line 804
    iput-object p2, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    .line 805
    iput-object p3, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 806
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/Call;->mState:I

    .line 807
    return-void
.end method

.method private fireCallDestroyed()V
    .locals 3

    .prologue
    .line 973
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 974
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Call$Listener;->onCallDestroyed(Landroid/telecom/Call;)V

    goto :goto_0

    .line 976
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private fireCannedTextResponsesLoaded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 955
    .local p1, "cannedTextResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 956
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Call$Listener;->onCannedTextResponsesLoaded(Landroid/telecom/Call;Ljava/util/List;)V

    goto :goto_0

    .line 958
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private fireChildrenChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 943
    .local p1, "children":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 944
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Call$Listener;->onChildrenChanged(Landroid/telecom/Call;Ljava/util/List;)V

    goto :goto_0

    .line 946
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private fireConferenceableCallsChanged()V
    .locals 3

    .prologue
    .line 979
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 980
    .local v1, "listener":Landroid/telecom/Call$Listener;
    iget-object v2, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Call$Listener;->onConferenceableCallsChanged(Landroid/telecom/Call;Ljava/util/List;)V

    goto :goto_0

    .line 982
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private fireDetailsChanged(Landroid/telecom/Call$Details;)V
    .locals 3
    .param p1, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 949
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 950
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Call$Listener;->onDetailsChanged(Landroid/telecom/Call;Landroid/telecom/Call$Details;)V

    goto :goto_0

    .line 952
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private fireParentChanged(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "newParent"    # Landroid/telecom/Call;

    .prologue
    .line 937
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 938
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Call$Listener;->onParentChanged(Landroid/telecom/Call;Landroid/telecom/Call;)V

    goto :goto_0

    .line 940
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private firePostDialWait(Ljava/lang/String;)V
    .locals 3
    .param p1, "remainingPostDialSequence"    # Ljava/lang/String;

    .prologue
    .line 967
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 968
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Call$Listener;->onPostDialWait(Landroid/telecom/Call;Ljava/lang/String;)V

    goto :goto_0

    .line 970
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private fireStateChanged(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 931
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 932
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Call$Listener;->onStateChanged(Landroid/telecom/Call;I)V

    goto :goto_0

    .line 934
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private fireVideoCallChanged(Landroid/telecom/InCallService$VideoCall;)V
    .locals 3
    .param p1, "videoCall"    # Landroid/telecom/InCallService$VideoCall;

    .prologue
    .line 961
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 962
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Call$Listener;->onVideoCallChanged(Landroid/telecom/Call;Landroid/telecom/InCallService$VideoCall;)V

    goto :goto_0

    .line 964
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private stateFromParcelableCallState(I)I
    .locals 4
    .param p1, "parcelableCallState"    # I

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 985
    packed-switch p1, :pswitch_data_0

    .line 1007
    const-string v2, "Unrecognized CallState %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1008
    :goto_0
    :pswitch_0
    return v0

    .line 989
    :pswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 991
    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 993
    goto :goto_0

    .line 995
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 997
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 999
    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_7
    move v0, v2

    .line 1001
    goto :goto_0

    :pswitch_8
    move v0, v2

    .line 1003
    goto :goto_0

    .line 1005
    :pswitch_9
    const/16 v0, 0xa

    goto :goto_0

    .line 985
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
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public addListener(Landroid/telecom/Call$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telecom/Call$Listener;

    .prologue
    .line 787
    iget-object v0, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    return-void
.end method

.method public answer(I)V
    .locals 2
    .param p1, "videoState"    # I

    .prologue
    .line 572
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->answerCall(Ljava/lang/String;I)V

    .line 573
    return-void
.end method

.method public conference(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "callToConferenceWith"    # Landroid/telecom/Call;

    .prologue
    .line 666
    if-eqz p1, :cond_0

    .line 667
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    iget-object v2, p1, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telecom/InCallAdapter;->conference(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public getCannedTextResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 758
    iget-object v0, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 713
    iget-boolean v3, p0, Landroid/telecom/Call;->mChildrenCached:Z

    if-nez v3, :cond_1

    .line 714
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/telecom/Call;->mChildrenCached:Z

    .line 715
    iget-object v3, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 717
    iget-object v3, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 718
    .local v2, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v3, v2}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 719
    .local v0, "call":Landroid/telecom/Call;
    if-nez v0, :cond_0

    .line 721
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/telecom/Call;->mChildrenCached:Z

    goto :goto_0

    .line 723
    :cond_0
    iget-object v3, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 728
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    return-object v3
.end method

.method public getConferenceableCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 737
    iget-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    return-object v0
.end method

.method public getDetails()Landroid/telecom/Call$Details;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    return-object v0
.end method

.method public getParent()Landroid/telecom/Call;
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    iget-object v1, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 703
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRemainingPostDialSequence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 746
    iget v0, p0, Landroid/telecom/Call;->mState:I

    return v0
.end method

.method public getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Landroid/telecom/Call;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    return-object v0
.end method

.method public hold()V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->holdCall(Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method final internalGetCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method final internalSetDisconnected()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 922
    iget v0, p0, Landroid/telecom/Call;->mState:I

    if-eq v0, v1, :cond_0

    .line 923
    iput v1, p0, Landroid/telecom/Call;->mState:I

    .line 924
    iget v0, p0, Landroid/telecom/Call;->mState:I

    invoke-direct {p0, v0}, Landroid/telecom/Call;->fireStateChanged(I)V

    .line 925
    invoke-direct {p0}, Landroid/telecom/Call;->fireCallDestroyed()V

    .line 926
    iget-object v0, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p0}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    .line 928
    :cond_0
    return-void
.end method

.method final internalSetPostDialWait(Ljava/lang/String;)V
    .locals 1
    .param p1, "remaining"    # Ljava/lang/String;

    .prologue
    .line 916
    iput-object p1, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    .line 917
    iget-object v0, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/telecom/Call;->firePostDialWait(Ljava/lang/String;)V

    .line 918
    return-void
.end method

.method final internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V
    .locals 30
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/ParcelableCall;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 817
    .local p2, "callIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/telecom/Call;>;"
    new-instance v3, Landroid/telecom/Call$Details;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getHandle()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getHandlePresentation()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCallerDisplayNamePresentation()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCapabilities()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getProperties()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getConnectTimeMillis()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getVideoState()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    invoke-direct/range {v3 .. v17}, Landroid/telecom/Call$Details;-><init>(Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/PhoneAccountHandle;IILandroid/telecom/DisconnectCause;JLandroid/telecom/GatewayInfo;ILandroid/telecom/StatusHints;Landroid/os/Bundle;)V

    .line 831
    .local v3, "details":Landroid/telecom/Call$Details;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v22, 0x1

    .line 832
    .local v22, "detailsChanged":Z
    :goto_0
    if-eqz v22, :cond_0

    .line 833
    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 836
    :cond_0
    const/4 v2, 0x0

    .line 837
    .local v2, "cannedTextResponsesChanged":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    if-nez v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 839
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    .line 843
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const/16 v29, 0x1

    .line 844
    .local v29, "videoCallChanged":Z
    :goto_1
    if-eqz v29, :cond_2

    .line 845
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/telecom/Call;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 848
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->stateFromParcelableCallState(I)I

    move-result v27

    .line 849
    .local v27, "state":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/telecom/Call;->mState:I

    move/from16 v0, v27

    if-eq v4, v0, :cond_9

    const/16 v28, 0x1

    .line 850
    .local v28, "stateChanged":Z
    :goto_2
    if-eqz v28, :cond_3

    .line 851
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/telecom/Call;->mState:I

    .line 854
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getParentCallId()Ljava/lang/String;

    move-result-object v26

    .line 855
    .local v26, "parentId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const/16 v25, 0x1

    .line 856
    .local v25, "parentChanged":Z
    :goto_3
    if-eqz v25, :cond_4

    .line 857
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    .line 860
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v18

    .line 861
    .local v18, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const/16 v19, 0x1

    .line 862
    .local v19, "childrenChanged":Z
    :goto_4
    if-eqz v19, :cond_5

    .line 863
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 864
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 865
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/telecom/Call;->mChildrenCached:Z

    .line 868
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getConferenceableCallIds()Ljava/util/List;

    move-result-object v20

    .line 869
    .local v20, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 870
    .local v21, "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 871
    .local v24, "otherId":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 872
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 831
    .end local v2    # "cannedTextResponsesChanged":Z
    .end local v18    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "childrenChanged":Z
    .end local v20    # "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .end local v22    # "detailsChanged":Z
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v24    # "otherId":Ljava/lang/String;
    .end local v25    # "parentChanged":Z
    .end local v26    # "parentId":Ljava/lang/String;
    .end local v27    # "state":I
    .end local v28    # "stateChanged":Z
    .end local v29    # "videoCallChanged":Z
    :cond_7
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 843
    .restart local v2    # "cannedTextResponsesChanged":Z
    .restart local v22    # "detailsChanged":Z
    :cond_8
    const/16 v29, 0x0

    goto/16 :goto_1

    .line 849
    .restart local v27    # "state":I
    .restart local v29    # "videoCallChanged":Z
    :cond_9
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 855
    .restart local v26    # "parentId":Ljava/lang/String;
    .restart local v28    # "stateChanged":Z
    :cond_a
    const/16 v25, 0x0

    goto :goto_3

    .line 861
    .restart local v18    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "parentChanged":Z
    :cond_b
    const/16 v19, 0x0

    goto :goto_4

    .line 876
    .restart local v19    # "childrenChanged":Z
    .restart local v20    # "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 877
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 878
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 879
    invoke-direct/range {p0 .. p0}, Landroid/telecom/Call;->fireConferenceableCallsChanged()V

    .line 885
    :cond_d
    if-eqz v28, :cond_e

    .line 886
    move-object/from16 v0, p0

    iget v4, v0, Landroid/telecom/Call;->mState:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireStateChanged(I)V

    .line 888
    :cond_e
    if-eqz v22, :cond_f

    .line 889
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireDetailsChanged(Landroid/telecom/Call$Details;)V

    .line 891
    :cond_f
    if-eqz v2, :cond_10

    .line 892
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireCannedTextResponsesLoaded(Ljava/util/List;)V

    .line 894
    :cond_10
    if-eqz v29, :cond_11

    .line 895
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireVideoCallChanged(Landroid/telecom/InCallService$VideoCall;)V

    .line 897
    :cond_11
    if-eqz v25, :cond_12

    .line 898
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireParentChanged(Landroid/telecom/Call;)V

    .line 900
    :cond_12
    if-eqz v19, :cond_13

    .line 901
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireChildrenChanged(Ljava/util/List;)V

    .line 908
    :cond_13
    move-object/from16 v0, p0

    iget v4, v0, Landroid/telecom/Call;->mState:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_14

    .line 909
    invoke-direct/range {p0 .. p0}, Landroid/telecom/Call;->fireCallDestroyed()V

    .line 910
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    .line 912
    :cond_14
    return-void
.end method

.method public mergeConference()V
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->mergeConference(Ljava/lang/String;)V

    .line 684
    return-void
.end method

.method public phoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 2
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "setDefault"    # Z

    .prologue
    .line 656
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 658
    return-void
.end method

.method public playDtmfTone(C)V
    .locals 2
    .param p1, "digit"    # C

    .prologue
    .line 615
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->playDtmfTone(Ljava/lang/String;C)V

    .line 616
    return-void
.end method

.method public postDialContinue(Z)V
    .locals 2
    .param p1, "proceed"    # Z

    .prologue
    .line 648
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->postDialContinue(Ljava/lang/String;Z)V

    .line 649
    return-void
.end method

.method public reject(ZLjava/lang/String;)V
    .locals 2
    .param p1, "rejectWithMessage"    # Z
    .param p2, "textMessage"    # Ljava/lang/String;

    .prologue
    .line 582
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 583
    return-void
.end method

.method public removeListener(Landroid/telecom/Call$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telecom/Call$Listener;

    .prologue
    .line 796
    if-eqz p1, :cond_0

    .line 797
    iget-object v0, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 799
    :cond_0
    return-void
.end method

.method public splitFromConference()V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->splitFromConference(Ljava/lang/String;)V

    .line 677
    return-void
.end method

.method public stopDtmfTone()V
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->stopDtmfTone(Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method public swapConference()V
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->swapConference(Ljava/lang/String;)V

    .line 691
    return-void
.end method

.method public unhold()V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->unholdCall(Ljava/lang/String;)V

    .line 604
    return-void
.end method
