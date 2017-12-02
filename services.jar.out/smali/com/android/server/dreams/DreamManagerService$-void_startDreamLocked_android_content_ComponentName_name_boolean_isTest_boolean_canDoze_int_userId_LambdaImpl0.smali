.class final synthetic Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;
.super Ljava/lang/Object;
.source "DreamManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$canDoze:Z

.field private synthetic val$isTest:Z

.field private synthetic val$name:Landroid/content/ComponentName;

.field private synthetic val$newToken:Landroid/os/Binder;

.field private synthetic val$this:Lcom/android/server/dreams/DreamManagerService;

.field private synthetic val$userId:I

.field private synthetic val$wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$this:Lcom/android/server/dreams/DreamManagerService;

    iput-object p2, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$newToken:Landroid/os/Binder;

    iput-object p3, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$name:Landroid/content/ComponentName;

    iput-boolean p4, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$isTest:Z

    iput-boolean p5, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$canDoze:Z

    iput p6, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$userId:I

    iput-object p7, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$this:Lcom/android/server/dreams/DreamManagerService;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$newToken:Landroid/os/Binder;

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$name:Landroid/content/ComponentName;

    iget-boolean v3, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$isTest:Z

    iget-boolean v4, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$canDoze:Z

    iget v5, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$userId:I

    iget-object v6, p0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/dreams/DreamManagerService;->-com_android_server_dreams_DreamManagerService_lambda$1(Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V

    return-void
.end method
