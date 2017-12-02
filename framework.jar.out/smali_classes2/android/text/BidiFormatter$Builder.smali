.class public final Landroid/text/BidiFormatter$Builder;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFlags:I

.field private mIsRtlContext:Z

.field private mTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/BidiFormatter;->-wrap1(Ljava/util/Locale;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/BidiFormatter$Builder;->initialize(Z)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-static {p1}, Landroid/text/BidiFormatter;->-wrap1(Ljava/util/Locale;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/BidiFormatter$Builder;->initialize(Z)V

    .line 160
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "rtlContext"    # Z

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-direct {p0, p1}, Landroid/text/BidiFormatter$Builder;->initialize(Z)V

    .line 151
    return-void
.end method

.method private initialize(Z)V
    .locals 1
    .param p1, "isRtlContext"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Landroid/text/BidiFormatter$Builder;->mIsRtlContext:Z

    .line 171
    invoke-static {}, Landroid/text/BidiFormatter;->-get0()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, p0, Landroid/text/BidiFormatter$Builder;->mTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    .line 172
    const/4 v0, 0x2

    iput v0, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    .line 169
    return-void
.end method


# virtual methods
.method public build()Landroid/text/BidiFormatter;
    .locals 5

    .prologue
    .line 204
    iget v0, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Landroid/text/BidiFormatter$Builder;->mTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    invoke-static {}, Landroid/text/BidiFormatter;->-get0()Landroid/text/TextDirectionHeuristic;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 206
    iget-boolean v0, p0, Landroid/text/BidiFormatter$Builder;->mIsRtlContext:Z

    invoke-static {v0}, Landroid/text/BidiFormatter;->-wrap0(Z)Landroid/text/BidiFormatter;

    move-result-object v0

    return-object v0

    .line 208
    :cond_0
    new-instance v0, Landroid/text/BidiFormatter;

    iget-boolean v1, p0, Landroid/text/BidiFormatter$Builder;->mIsRtlContext:Z

    iget v2, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    iget-object v3, p0, Landroid/text/BidiFormatter$Builder;->mTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/BidiFormatter;-><init>(ZILandroid/text/TextDirectionHeuristic;Landroid/text/BidiFormatter;)V

    return-object v0
.end method

.method public setTextDirectionHeuristic(Landroid/text/TextDirectionHeuristic;)Landroid/text/BidiFormatter$Builder;
    .locals 0
    .param p1, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 196
    iput-object p1, p0, Landroid/text/BidiFormatter$Builder;->mTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    .line 197
    return-object p0
.end method

.method public stereoReset(Z)Landroid/text/BidiFormatter$Builder;
    .locals 1
    .param p1, "stereoReset"    # Z

    .prologue
    .line 180
    if-eqz p1, :cond_0

    .line 181
    iget v0, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    .line 185
    :goto_0
    return-object p0

    .line 183
    :cond_0
    iget v0, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    goto :goto_0
.end method
