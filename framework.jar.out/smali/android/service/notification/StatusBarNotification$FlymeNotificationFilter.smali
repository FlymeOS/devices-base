.class public Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;
.super Ljava/lang/Object;
.source "StatusBarNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/StatusBarNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlymeNotificationFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static NOTIFICATION_UNKNOW:Ljava/lang/String;


# instance fields
.field public category:Ljava/lang/String;

.field public categoryPriority:I

.field public disableAuthorityManagement:Z

.field public extras:Landroid/os/Bundle;

.field public intercept:Z

.field public notificationPriority:I

.field public score:F

.field public score_scale:F

.field public shouldAffectIntercept:Z

.field public shouldAffectRanking:Z

.field public tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "unknow"

    sput-object v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->NOTIFICATION_UNKNOW:Ljava/lang/String;

    .line 101
    new-instance v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter$1;

    invoke-direct {v0}, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter$1;-><init>()V

    sput-object v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 52
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->NOTIFICATION_UNKNOW:Ljava/lang/String;

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    .line 54
    iput v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    .line 55
    iput v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    .line 58
    iput-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    .line 60
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score_scale:F

    .line 62
    iput-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    .line 63
    iput-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    .line 64
    iput-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->disableAuthorityManagement:Z

    .line 80
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->NOTIFICATION_UNKNOW:Ljava/lang/String;

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    .line 54
    iput v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    .line 55
    iput v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    .line 58
    iput-boolean v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    .line 60
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score_scale:F

    .line 62
    iput-boolean v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    .line 63
    iput-boolean v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    .line 64
    iput-boolean v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->disableAuthorityManagement:Z

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->tag:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->extras:Landroid/os/Bundle;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score_scale:F

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->disableAuthorityManagement:Z

    .line 66
    return-void

    :cond_0
    move v0, v2

    .line 72
    goto :goto_0

    :cond_1
    move v0, v2

    .line 75
    goto :goto_1

    :cond_2
    move v0, v2

    .line 76
    goto :goto_2

    :cond_3
    move v1, v2

    .line 77
    goto :goto_3
.end method


# virtual methods
.method public copy()Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    invoke-direct {v0}, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;-><init>()V

    .line 85
    .local v0, "filter":Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    iput-object v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    .line 86
    iget v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    iput v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    .line 87
    iget v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    iput v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    .line 88
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->tag:Ljava/lang/String;

    iput-object v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->tag:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iput-object v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->extras:Landroid/os/Bundle;

    .line 92
    :cond_0
    iget-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    iput-boolean v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    .line 93
    iget v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    iput v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    .line 94
    iget v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score_scale:F

    iput v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score_scale:F

    .line 95
    iget-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    iput-boolean v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    .line 96
    iget-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    iput-boolean v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    .line 97
    iget-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->disableAuthorityManagement:Z

    iput-boolean v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->disableAuthorityManagement:Z

    .line 98
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public isLowPriority()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x2

    const/4 v1, 0x0

    .line 145
    iget v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    if-eq v2, v3, :cond_0

    .line 146
    iget v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    if-nez v2, :cond_2

    .line 147
    iget v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    if-ne v2, v3, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 147
    goto :goto_0

    :cond_2
    move v0, v1

    .line 146
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 135
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "category=%s;categoryPriority=%d,notificationPriority=%d;tag=%s;score=%f,score_scale=%f"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    .line 136
    iget-object v4, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget v4, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-object v4, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->tag:Ljava/lang/String;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    iget v4, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    iget v4, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score_scale:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 135
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";extras=;intercept="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 138
    const-string/jumbo v2, ";shouldAffectRanking="

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 138
    iget-boolean v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 139
    const-string/jumbo v2, ";shouldAffectIntercept="

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 139
    iget-boolean v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    const-string/jumbo v2, ";disableAuthorityManagement="

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    iget-boolean v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->disableAuthorityManagement:Z

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 125
    iget-boolean v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 126
    iget v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 127
    iget v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score_scale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 128
    iget-boolean v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 129
    iget-boolean v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 130
    iget-boolean v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->disableAuthorityManagement:Z

    if-eqz v0, :cond_3

    :goto_3
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 119
    return-void

    :cond_0
    move v0, v2

    .line 125
    goto :goto_0

    :cond_1
    move v0, v2

    .line 128
    goto :goto_1

    :cond_2
    move v0, v2

    .line 129
    goto :goto_2

    :cond_3
    move v1, v2

    .line 130
    goto :goto_3
.end method
