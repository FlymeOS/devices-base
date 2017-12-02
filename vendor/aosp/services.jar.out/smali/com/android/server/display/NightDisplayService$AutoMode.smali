.class abstract Lcom/android/server/display/NightDisplayService$AutoMode;
.super Ljava/lang/Object;
.source "NightDisplayService.java"

# interfaces
.implements Lcom/android/internal/app/NightDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NightDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AutoMode"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/NightDisplayService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/NightDisplayService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/NightDisplayService;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$AutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/NightDisplayService;Lcom/android/server/display/NightDisplayService$AutoMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/NightDisplayService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/NightDisplayService$AutoMode;-><init>(Lcom/android/server/display/NightDisplayService;)V

    return-void
.end method


# virtual methods
.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method
