.class public final Lcom/android/internal/app/procstats/ProcessStats$PackageState;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageState"
.end annotation


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mProcesses:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field public final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field public final mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 1727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1721
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1720
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    .line 1723
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1722
    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 1728
    iput p2, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    .line 1729
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    .line 1727
    return-void
.end method
