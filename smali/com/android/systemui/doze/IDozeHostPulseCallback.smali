.class public interface abstract Lcom/android/systemui/doze/IDozeHostPulseCallback;
.super Ljava/lang/Object;
.source "IDozeHostPulseCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/IDozeHostPulseCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPulseFinished()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPulseStarted()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
