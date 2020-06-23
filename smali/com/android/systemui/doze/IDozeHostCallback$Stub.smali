.class public abstract Lcom/android/systemui/doze/IDozeHostCallback$Stub;
.super Landroid/os/Binder;
.source "IDozeHostCallback.java"

# interfaces
.implements Lcom/android/systemui/doze/IDozeHostCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/IDozeHostCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/IDozeHostCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.android.systemui.doze.IDozeHostCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/doze/IDozeHostCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/doze/IDozeHostCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    return-object v1

    .line 26
    :cond_0
    const-string/jumbo v1, "com.android.systemui.doze.IDozeHostCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/systemui/doze/IDozeHostCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/systemui/doze/IDozeHostCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/systemui/doze/IDozeHostCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/IDozeHostCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 42
    :sswitch_0
    const-string/jumbo v2, "com.android.systemui.doze.IDozeHostCallback"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v3

    .line 47
    :sswitch_1
    const-string/jumbo v2, "com.android.systemui.doze.IDozeHostCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/doze/IDozeHostCallback$Stub;->onNewNotifications()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    return v3

    .line 54
    :sswitch_2
    const-string/jumbo v2, "com.android.systemui.doze.IDozeHostCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/doze/IDozeHostCallback$Stub;->onBuzzBeepBlinked()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    return v3

    .line 61
    :sswitch_3
    const-string/jumbo v2, "com.android.systemui.doze.IDozeHostCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 64
    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/IDozeHostCallback$Stub;->onNotificationLight(Z)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    return v3

    .line 63
    .end local v1    # "_arg0":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_0

    .line 70
    .end local v1    # "_arg0":Z
    :sswitch_4
    const-string/jumbo v2, "com.android.systemui.doze.IDozeHostCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 73
    .restart local v1    # "_arg0":Z
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/IDozeHostCallback$Stub;->onPowerSaveChanged(Z)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    return v3

    .line 72
    .end local v1    # "_arg0":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_1

    .line 79
    .end local v1    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v2, "com.android.systemui.doze.IDozeHostCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/doze/IDozeHostCallback$Stub;->onDozeStarted()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    return v3

    .line 86
    :sswitch_6
    const-string/jumbo v2, "com.android.systemui.doze.IDozeHostCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/doze/IDozeHostCallback$Stub;->wakeUp()V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    return v3

    .line 93
    :sswitch_7
    const-string/jumbo v2, "com.android.systemui.doze.IDozeHostCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/doze/IDozeHostCallback$Stub;->onNotificationHeadsUp()V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    return v3

    .line 100
    :sswitch_8
    const-string/jumbo v2, "com.android.systemui.doze.IDozeHostCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/doze/IDozeHostCallback$Stub;->notifyPowerKeyWakeup()V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    return v3

    .line 107
    :sswitch_9
    const-string/jumbo v2, "com.android.systemui.doze.IDozeHostCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/doze/IDozeHostCallback$Stub;->notifyFpsUnlock()V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    return v3

    .line 114
    :sswitch_a
    const-string/jumbo v2, "com.android.systemui.doze.IDozeHostCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 117
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/IDozeHostCallback$Stub;->notifyFpsError(I)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    return v3

    .line 123
    .end local v0    # "_arg0":I
    :sswitch_b
    const-string/jumbo v2, "com.android.systemui.doze.IDozeHostCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/IDozeHostCallback$Stub;->notifyFpsHelp(I)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    return v3

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
