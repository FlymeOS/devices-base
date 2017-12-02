.class public final Landroid/media/MediaRouterClientState$RouteInfo;
.super Ljava/lang/Object;
.source "MediaRouterClientState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouterClientState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouteInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouterClientState$RouteInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/MediaRouterClientState$RouteInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public description:Ljava/lang/String;

.field public deviceType:I

.field public enabled:Z

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public playbackStream:I

.field public playbackType:I

.field public presentationDisplayId:I

.field public statusCode:I

.field public supportedTypes:I

.field public volume:I

.field public volumeHandling:I

.field public volumeMax:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    new-instance v0, Landroid/media/MediaRouterClientState$RouteInfo$1;

    invoke-direct {v0}, Landroid/media/MediaRouterClientState$RouteInfo$1;-><init>()V

    .line 193
    sput-object v0, Landroid/media/MediaRouterClientState$RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/media/MediaRouterClientState$RouteInfo;)V
    .locals 1
    .param p1, "other"    # Landroid/media/MediaRouterClientState$RouteInfo;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iget-object v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 122
    iget-object v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    .line 123
    iget-object v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    .line 124
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    .line 125
    iget-boolean v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    iput-boolean v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    .line 126
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    .line 127
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    .line 128
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    .line 129
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    .line 130
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    .line 131
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    .line 132
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    .line 133
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    .line 120
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 111
    iput-boolean v2, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    .line 112
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    .line 113
    iput v2, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    .line 114
    iput v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    .line 115
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    .line 116
    iput v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    .line 117
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    .line 109
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RouteInfo{ id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    const-string/jumbo v1, ", name="

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    iget-object v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    const-string/jumbo v1, ", description="

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    iget-object v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    const-string/jumbo v1, ", supportedTypes=0x"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 180
    const-string/jumbo v1, ", enabled="

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 180
    iget-boolean v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    const-string/jumbo v1, ", statusCode="

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    const-string/jumbo v1, ", playbackType="

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    const-string/jumbo v1, ", playbackStream="

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    const-string/jumbo v1, ", volume="

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    const-string/jumbo v1, ", volumeMax="

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    const-string/jumbo v1, ", volumeHandling="

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    const-string/jumbo v1, ", presentationDisplayId="

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    const-string/jumbo v1, ", deviceType="

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    const-string/jumbo v1, " }"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 159
    iget-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-boolean v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
