.class public interface abstract Landroid/app/IAlarmListener;
.super Ljava/lang/Object;
.source "IAlarmListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAlarmListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract doAlarm(Landroid/app/IAlarmCompleteListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
