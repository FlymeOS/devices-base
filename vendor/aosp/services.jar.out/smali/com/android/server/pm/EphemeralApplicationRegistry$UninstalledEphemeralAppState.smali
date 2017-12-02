.class final Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
.super Ljava/lang/Object;
.source "EphemeralApplicationRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/EphemeralApplicationRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UninstalledEphemeralAppState"
.end annotation


# instance fields
.field final mEphemeralApplicationInfo:Landroid/content/pm/EphemeralApplicationInfo;

.field final mTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/pm/EphemeralApplicationInfo;J)V
    .locals 0
    .param p1, "ephemeralApp"    # Landroid/content/pm/EphemeralApplicationInfo;
    .param p2, "timestamp"    # J

    .prologue
    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    iput-object p1, p0, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;->mEphemeralApplicationInfo:Landroid/content/pm/EphemeralApplicationInfo;

    .line 722
    iput-wide p2, p0, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;->mTimestamp:J

    .line 720
    return-void
.end method
