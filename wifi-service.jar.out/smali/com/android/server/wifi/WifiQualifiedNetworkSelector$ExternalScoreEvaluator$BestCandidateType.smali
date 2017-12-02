.class interface abstract annotation Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator$BestCandidateType;
.super Ljava/lang/Object;
.source "WifiQualifiedNetworkSelector.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2608
    name = "BestCandidateType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final NONE:I = 0x0

.field public static final SAVED_NETWORK:I = 0x1

.field public static final UNTRUSTED_NETWORK:I = 0x2
