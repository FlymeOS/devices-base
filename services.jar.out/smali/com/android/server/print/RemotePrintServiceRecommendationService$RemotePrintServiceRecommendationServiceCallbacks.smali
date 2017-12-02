.class public interface abstract Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;
.super Ljava/lang/Object;
.source "RemotePrintServiceRecommendationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintServiceRecommendationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemotePrintServiceRecommendationServiceCallbacks"
.end annotation


# virtual methods
.method public abstract onPrintServiceRecommendationsUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;)V"
        }
    .end annotation
.end method
