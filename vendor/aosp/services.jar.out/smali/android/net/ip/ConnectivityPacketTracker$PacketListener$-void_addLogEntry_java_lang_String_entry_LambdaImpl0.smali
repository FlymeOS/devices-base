.class final synthetic Landroid/net/ip/ConnectivityPacketTracker$PacketListener$-void_addLogEntry_java_lang_String_entry_LambdaImpl0;
.super Ljava/lang/Object;
.source "ConnectivityPacketTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/ConnectivityPacketTracker$PacketListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_addLogEntry_java_lang_String_entry_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$entry:Ljava/lang/String;

.field private synthetic val$this:Landroid/net/ip/ConnectivityPacketTracker$PacketListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ip/ConnectivityPacketTracker$PacketListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener$-void_addLogEntry_java_lang_String_entry_LambdaImpl0;->val$this:Landroid/net/ip/ConnectivityPacketTracker$PacketListener;

    iput-object p2, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener$-void_addLogEntry_java_lang_String_entry_LambdaImpl0;->val$entry:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener$-void_addLogEntry_java_lang_String_entry_LambdaImpl0;->val$this:Landroid/net/ip/ConnectivityPacketTracker$PacketListener;

    iget-object v1, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener$-void_addLogEntry_java_lang_String_entry_LambdaImpl0;->val$entry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->-android_net_ip_ConnectivityPacketTracker$PacketListener_lambda$1(Ljava/lang/String;)V

    return-void
.end method
