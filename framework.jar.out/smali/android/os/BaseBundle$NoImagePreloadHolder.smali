.class final Landroid/os/BaseBundle$NoImagePreloadHolder;
.super Ljava/lang/Object;
.source "BaseBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BaseBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoImagePreloadHolder"
.end annotation


# static fields
.field public static final EMPTY_PARCEL:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    sput-object v0, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    .line 72
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
