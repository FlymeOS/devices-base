.class final enum Lcom/android/internal/app/ResolverActivity$ActionTitle;
.super Ljava/lang/Enum;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActionTitle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/app/ResolverActivity$ActionTitle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;


# instance fields
.field public final action:Ljava/lang/String;

.field public final labelRes:I

.field public final namedTitleRes:I

.field public final titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 149
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string/jumbo v1, "VIEW"

    const-string/jumbo v3, "android.intent.action.VIEW"

    .line 150
    const v4, 0x1040388

    .line 151
    const v5, 0x1040389

    .line 152
    const v6, 0x104038a

    .line 149
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 153
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string/jumbo v4, "EDIT"

    const-string/jumbo v6, "android.intent.action.EDIT"

    .line 154
    const v7, 0x104038b

    .line 155
    const v8, 0x104038c

    .line 156
    const v9, 0x104038d

    move v5, v10

    .line 153
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 157
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string/jumbo v4, "SEND"

    const-string/jumbo v6, "android.intent.action.SEND"

    .line 158
    const v7, 0x104038e

    .line 159
    const v8, 0x104038f

    .line 160
    const v9, 0x1040390

    move v5, v11

    .line 157
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 161
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string/jumbo v4, "SENDTO"

    const-string/jumbo v6, "android.intent.action.SENDTO"

    .line 162
    const v7, 0x1040391

    .line 163
    const v8, 0x1040392

    .line 164
    const v9, 0x1040393

    move v5, v12

    .line 161
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 165
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string/jumbo v4, "SEND_MULTIPLE"

    const-string/jumbo v6, "android.intent.action.SEND_MULTIPLE"

    .line 166
    const v7, 0x104038e

    .line 167
    const v8, 0x104038f

    .line 168
    const v9, 0x1040390

    move v5, v13

    .line 165
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 169
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string/jumbo v4, "CAPTURE_IMAGE"

    const-string/jumbo v6, "android.media.action.IMAGE_CAPTURE"

    const/4 v5, 0x5

    .line 170
    const v7, 0x1040397

    .line 171
    const v8, 0x1040398

    .line 172
    const v9, 0x1040399

    .line 169
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 173
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string/jumbo v4, "DEFAULT"

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 174
    const v7, 0x1040385

    .line 175
    const v8, 0x1040386

    .line 176
    const v9, 0x1040387

    .line 173
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 177
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string/jumbo v4, "HOME"

    const-string/jumbo v6, "android.intent.action.MAIN"

    const/4 v5, 0x7

    .line 178
    const v7, 0x1040394

    .line 179
    const v8, 0x1040395

    .line 180
    const v9, 0x1040396

    .line 177
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 148
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/app/ResolverActivity$ActionTitle;

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .locals 0
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "titleRes"    # I
    .param p5, "namedTitleRes"    # I
    .param p6, "labelRes"    # I

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 188
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->action:Ljava/lang/String;

    .line 189
    iput p4, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    .line 190
    iput p5, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->namedTitleRes:I

    .line 191
    iput p6, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->labelRes:I

    .line 187
    return-void
.end method

.method public static forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .locals 5
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 196
    .local v0, "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    sget-object v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-eq v0, v4, :cond_0

    if-eqz p0, :cond_0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->action:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    return-object v0

    .line 195
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_1
    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 148
    const-class v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object v0
.end method
