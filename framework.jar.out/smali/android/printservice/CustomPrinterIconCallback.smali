.class public final Landroid/printservice/CustomPrinterIconCallback;
.super Ljava/lang/Object;
.source "CustomPrinterIconCallback.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CustomPrinterIconCB"


# instance fields
.field private final mObserver:Landroid/printservice/IPrintServiceClient;

.field private final mPrinterId:Landroid/print/PrinterId;


# direct methods
.method constructor <init>(Landroid/print/PrinterId;Landroid/printservice/IPrintServiceClient;)V
    .locals 0
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "observer"    # Landroid/printservice/IPrintServiceClient;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/printservice/CustomPrinterIconCallback;->mPrinterId:Landroid/print/PrinterId;

    .line 44
    iput-object p2, p0, Landroid/printservice/CustomPrinterIconCallback;->mObserver:Landroid/printservice/IPrintServiceClient;

    .line 42
    return-void
.end method


# virtual methods
.method public onCustomPrinterIconLoaded(Landroid/graphics/drawable/Icon;)Z
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Landroid/printservice/CustomPrinterIconCallback;->mObserver:Landroid/printservice/IPrintServiceClient;

    iget-object v2, p0, Landroid/printservice/CustomPrinterIconCallback;->mPrinterId:Landroid/print/PrinterId;

    invoke-interface {v1, v2, p1}, Landroid/printservice/IPrintServiceClient;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const/4 v1, 0x1

    return v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "CustomPrinterIconCB"

    const-string/jumbo v2, "Could not update icon"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    const/4 v1, 0x0

    return v1
.end method
