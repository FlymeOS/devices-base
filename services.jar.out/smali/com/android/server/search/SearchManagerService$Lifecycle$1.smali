.class Lcom/android/server/search/SearchManagerService$Lifecycle$1;
.super Ljava/lang/Object;
.source "SearchManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/search/SearchManagerService$Lifecycle;->onUnlockUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/search/SearchManagerService$Lifecycle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/search/SearchManagerService$Lifecycle;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/search/SearchManagerService$Lifecycle;
    .param p2, "val$userId"    # I

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1;->this$1:Lcom/android/server/search/SearchManagerService$Lifecycle;

    iput p2, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1;->this$1:Lcom/android/server/search/SearchManagerService$Lifecycle;

    invoke-static {v0}, Lcom/android/server/search/SearchManagerService$Lifecycle;->-get0(Lcom/android/server/search/SearchManagerService$Lifecycle;)Lcom/android/server/search/SearchManagerService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/server/search/SearchManagerService;->-wrap1(Lcom/android/server/search/SearchManagerService;I)V

    .line 81
    return-void
.end method
