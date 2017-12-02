.class public interface abstract Lcom/android/server/vr/SettingsObserver$SettingChangeListener;
.super Ljava/lang/Object;
.source "SettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/SettingsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SettingChangeListener"
.end annotation


# virtual methods
.method public abstract onSettingChanged()V
.end method

.method public abstract onSettingRestored(Ljava/lang/String;Ljava/lang/String;I)V
.end method
