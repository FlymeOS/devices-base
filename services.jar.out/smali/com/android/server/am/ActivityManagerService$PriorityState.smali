.class final Lcom/android/server/am/ActivityManagerService$PriorityState;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PriorityState"
.end annotation


# instance fields
.field private prevPriority:I

.field private regionCounter:I


# direct methods
.method static synthetic -get0(Lcom/android/server/am/ActivityManagerService$PriorityState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ActivityManagerService$PriorityState;->prevPriority:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/am/ActivityManagerService$PriorityState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ActivityManagerService$PriorityState;->regionCounter:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/am/ActivityManagerService$PriorityState;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$PriorityState;->prevPriority:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/am/ActivityManagerService$PriorityState;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$PriorityState;->regionCounter:I

    return p1
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$PriorityState;->regionCounter:I

    .line 656
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$PriorityState;->prevPriority:I

    .line 649
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService$PriorityState;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$PriorityState;-><init>()V

    return-void
.end method
