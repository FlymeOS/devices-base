.class public Landroid/content/pm/ComponentInfo;
.super Landroid/content/pm/PackageItemInfo;
.source "ComponentInfo.java"


# instance fields
.field public applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public descriptionRes:I

.field public directBootAware:Z

.field public enabled:Z

.field public encryptionAware:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public exported:Z

.field public processName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/content/pm/PackageItemInfo;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 66
    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 73
    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 77
    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->encryptionAware:Z

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ComponentInfo;)V
    .locals 2
    .param p1, "orig"    # Landroid/content/pm/ComponentInfo;

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/content/pm/PackageItemInfo;)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 66
    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 73
    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 77
    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->encryptionAware:Z

    .line 84
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 85
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 86
    iget v0, p1, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    iput v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 87
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 88
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->exported:Z

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 89
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->encryptionAware:Z

    .line 82
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 205
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/os/Parcel;)V

    .line 58
    iput-boolean v2, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 66
    iput-boolean v3, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 73
    iput-boolean v3, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 77
    iput-boolean v3, p0, Landroid/content/pm/ComponentInfo;->encryptionAware:Z

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 207
    .local v0, "hasApplicationInfo":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 208
    sget-object v1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 210
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    :goto_3
    iput-boolean v2, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    iput-boolean v2, p0, Landroid/content/pm/ComponentInfo;->encryptionAware:Z

    .line 204
    return-void

    .end local v0    # "hasApplicationInfo":Z
    :cond_1
    move v0, v3

    .line 206
    goto :goto_0

    .restart local v0    # "hasApplicationInfo":Z
    :cond_2
    move v1, v3

    .line 212
    goto :goto_1

    :cond_3
    move v1, v3

    .line 213
    goto :goto_2

    :cond_4
    move v2, v3

    .line 214
    goto :goto_3
.end method


# virtual methods
.method protected dumpBack(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 174
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/ComponentInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 173
    return-void
.end method

.method dumpBack(Landroid/util/Printer;Ljava/lang/String;I)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    .line 178
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ApplicationInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 186
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;)V

    .line 177
    return-void

    .line 183
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ApplicationInfo: null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected dumpFront(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " exported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    const-string/jumbo v1, " directBootAware="

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    iget-boolean v1, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 168
    iget v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    if-eqz v0, :cond_1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 161
    :cond_1
    return-void

    .line 164
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "processName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public final getBannerResource()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Landroid/content/pm/ComponentInfo;->banner:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/ComponentInfo;->banner:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->banner:I

    goto :goto_0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 158
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getIconResource()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Landroid/content/pm/ComponentInfo;->icon:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/ComponentInfo;->icon:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    goto :goto_0
.end method

.method public final getLogoResource()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Landroid/content/pm/ComponentInfo;->logo:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/ComponentInfo;->logo:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadDefaultBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 229
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 222
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected loadDefaultLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 237
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 93
    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v2

    .line 96
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 98
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v2, p0, Landroid/content/pm/ComponentInfo;->labelRes:I

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Landroid/content/pm/ComponentInfo;->labelRes:I

    invoke-virtual {p1, v2, v3, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 100
    .local v1, "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 101
    return-object v1

    .line 104
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 105
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v2

    .line 107
    :cond_2
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v2, :cond_3

    .line 108
    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p1, v2, v3, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 109
    .restart local v1    # "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    .line 110
    return-object v1

    .line 113
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_3
    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 191
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    :goto_0
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    return-void

    .line 194
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 199
    goto :goto_1

    :cond_2
    move v0, v2

    .line 200
    goto :goto_2

    :cond_3
    move v1, v2

    .line 201
    goto :goto_3
.end method
