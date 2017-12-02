.class public final Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$Contacts$AggregationSuggestions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mContactId:J

.field private mLimit:I

.field private final mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1931
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mValues:Ljava/util/ArrayList;

    .line 1929
    return-void
.end method


# virtual methods
.method public addNameParameter(Ljava/lang/String;)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1953
    iget-object v0, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1954
    return-object p0
.end method

.method public build()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 1973
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1974
    .local v0, "builder":Landroid/net/Uri$Builder;
    iget-wide v4, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mContactId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1975
    const-string/jumbo v3, "suggestions"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1976
    iget v3, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mLimit:I

    if-eqz v3, :cond_0

    .line 1977
    const-string/jumbo v3, "limit"

    iget v4, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mLimit:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1980
    :cond_0
    iget-object v3, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1981
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1982
    const-string/jumbo v4, "query"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "name:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1983
    iget-object v3, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1982
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1981
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1986
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public setContactId(J)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;
    .locals 1
    .param p1, "contactId"    # J

    .prologue
    .line 1942
    iput-wide p1, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mContactId:J

    .line 1943
    return-object p0
.end method

.method public setLimit(I)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 1964
    iput p1, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mLimit:I

    .line 1965
    return-object p0
.end method
