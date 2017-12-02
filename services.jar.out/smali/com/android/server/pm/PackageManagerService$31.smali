.class Lcom/android/server/pm/PackageManagerService$31;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deletePackageIfUnusedLPr(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$packageName"    # Ljava/lang/String;

    .prologue
    .line 20819
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$31;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$31;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 20821
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$31;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$31;->val$packageName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap10(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    .line 20820
    return-void
.end method
