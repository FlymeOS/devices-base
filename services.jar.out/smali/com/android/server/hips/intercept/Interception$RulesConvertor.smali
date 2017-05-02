.class Lcom/android/server/hips/intercept/Interception$RulesConvertor;
.super Ljava/lang/Object;
.source "Interception.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/intercept/Interception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RulesConvertor"
.end annotation


# instance fields
.field mAction:Ljava/lang/String;

.field mCalleeClass:Ljava/lang/String;

.field mCalleePkg:Ljava/lang/String;

.field mCallerPkg:Ljava/lang/String;

.field mData:Ljava/lang/String;

.field mExtras:Ljava/lang/String;

.field mIntercept:Z

.field mProcessName:Ljava/lang/String;

.field mRunType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "runType"    # Ljava/lang/String;
    .param p2, "callerPkg"    # Ljava/lang/String;
    .param p3, "calleePkg"    # Ljava/lang/String;
    .param p4, "calleeClass"    # Ljava/lang/String;
    .param p5, "processName"    # Ljava/lang/String;
    .param p6, "action"    # Ljava/lang/String;
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "extras"    # Ljava/lang/String;
    .param p9, "interception"    # Ljava/lang/String;

    .prologue
    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 840
    iput-object p1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mRunType:Ljava/lang/String;

    .line 841
    iput-object p2, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCallerPkg:Ljava/lang/String;

    .line 842
    iput-object p3, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    .line 843
    iput-object p4, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleeClass:Ljava/lang/String;

    .line 844
    iput-object p5, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mProcessName:Ljava/lang/String;

    .line 845
    iput-object p6, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mAction:Ljava/lang/String;

    .line 846
    iput-object p7, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mData:Ljava/lang/String;

    .line 847
    iput-object p8, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mExtras:Ljava/lang/String;

    .line 848
    if-eqz p9, :cond_0

    .line 849
    const-string/jumbo v0, "true"

    invoke-virtual {p9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    .line 839
    :cond_0
    return-void

    .line 850
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
