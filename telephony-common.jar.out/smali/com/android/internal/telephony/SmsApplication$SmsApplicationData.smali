.class public Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
.super Ljava/lang/Object;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsApplicationData"
.end annotation


# instance fields
.field private mApplicationName:Ljava/lang/String;

.field public mMmsReceiverClass:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mProviderChangedReceiverClass:Ljava/lang/String;

.field public mRespondViaMessageClass:Ljava/lang/String;

.field public mSendToClass:Ljava/lang/String;

.field public mSmsAppChangedReceiverClass:Ljava/lang/String;

.field public mSmsReceiverClass:Ljava/lang/String;

.field public mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    .line 131
    iput p2, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    .line 129
    return-void
.end method


# virtual methods
.method public getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 135
    iget-object v5, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 139
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    .line 140
    iget v6, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 139
    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 144
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 146
    .local v2, "label":Ljava/lang/CharSequence;
    if-nez v2, :cond_1

    :goto_0
    iput-object v4, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    .line 149
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "label":Ljava/lang/CharSequence;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    return-object v4

    .line 141
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v4

    .line 146
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "label":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 125
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    const-string/jumbo v1, " mSmsReceiverClass: "

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    const-string/jumbo v1, " mMmsReceiverClass: "

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    const-string/jumbo v1, " mRespondViaMessageClass: "

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 158
    const-string/jumbo v1, " mSendToClass: "

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 159
    const-string/jumbo v1, " mSmsAppChangedClass: "

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsAppChangedReceiverClass:Ljava/lang/String;

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    const-string/jumbo v1, " mProviderChangedReceiverClass: "

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mProviderChangedReceiverClass:Ljava/lang/String;

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    const-string/jumbo v1, " mUid: "

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    iget v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
