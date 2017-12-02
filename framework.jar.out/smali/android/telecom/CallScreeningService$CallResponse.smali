.class public Landroid/telecom/CallScreeningService$CallResponse;
.super Ljava/lang/Object;
.source "CallScreeningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallScreeningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallScreeningService$CallResponse$Builder;
    }
.end annotation


# instance fields
.field private final mShouldDisallowCall:Z

.field private final mShouldRejectCall:Z

.field private final mShouldSkipCallLog:Z

.field private final mShouldSkipNotification:Z


# direct methods
.method private constructor <init>(ZZZZ)V
    .locals 2
    .param p1, "shouldDisallowCall"    # Z
    .param p2, "shouldRejectCall"    # Z
    .param p3, "shouldSkipCallLog"    # Z
    .param p4, "shouldSkipNotification"    # Z

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    if-nez p1, :cond_1

    .line 104
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 103
    if-eqz p4, :cond_1

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid response state for allowed call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldDisallowCall:Z

    .line 109
    iput-boolean p2, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldRejectCall:Z

    .line 110
    iput-boolean p3, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSkipCallLog:Z

    .line 111
    iput-boolean p4, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSkipNotification:Z

    .line 102
    return-void
.end method

.method synthetic constructor <init>(ZZZZLandroid/telecom/CallScreeningService$CallResponse;)V
    .locals 0
    .param p1, "shouldDisallowCall"    # Z
    .param p2, "shouldRejectCall"    # Z
    .param p3, "shouldSkipCallLog"    # Z
    .param p4, "shouldSkipNotification"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telecom/CallScreeningService$CallResponse;-><init>(ZZZZ)V

    return-void
.end method


# virtual methods
.method public getDisallowCall()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldDisallowCall:Z

    return v0
.end method

.method public getRejectCall()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldRejectCall:Z

    return v0
.end method

.method public getSkipCallLog()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSkipCallLog:Z

    return v0
.end method

.method public getSkipNotification()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSkipNotification:Z

    return v0
.end method
