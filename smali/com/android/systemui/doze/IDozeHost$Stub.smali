.class public abstract Lcom/android/systemui/doze/IDozeHost$Stub;
.super Landroid/os/Binder;
.source "IDozeHost.java"

# interfaces
.implements Lcom/android/systemui/doze/IDozeHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/IDozeHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/IDozeHost$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.android.systemui.doze.IDozeHost"

    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/doze/IDozeHost$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/doze/IDozeHost;
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
    const-string/jumbo v1, "com.android.systemui.doze.IDozeHost"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/systemui/doze/IDozeHost;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/systemui/doze/IDozeHost;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/systemui/doze/IDozeHost$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/IDozeHost$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 42
    :sswitch_0
    const-string/jumbo v5, "com.android.systemui.doze.IDozeHost"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v6

    .line 47
    :sswitch_1
    const-string/jumbo v5, "com.android.systemui.doze.IDozeHost"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/doze/IDozeHostCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/doze/IDozeHostCallback;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Lcom/android/systemui/doze/IDozeHostCallback;
    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/IDozeHost$Stub;->addCallback(Lcom/android/systemui/doze/IDozeHostCallback;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    return v6

    .line 56
    .end local v0    # "_arg0":Lcom/android/systemui/doze/IDozeHostCallback;
    :sswitch_2
    const-string/jumbo v5, "com.android.systemui.doze.IDozeHost"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/doze/IDozeHostCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/doze/IDozeHostCallback;

    move-result-object v0

    .line 59
    .restart local v0    # "_arg0":Lcom/android/systemui/doze/IDozeHostCallback;
    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/IDozeHost$Stub;->removeCallback(Lcom/android/systemui/doze/IDozeHostCallback;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    return v6

    .line 65
    .end local v0    # "_arg0":Lcom/android/systemui/doze/IDozeHostCallback;
    :sswitch_3
    const-string/jumbo v5, "com.android.systemui.doze.IDozeHost"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/doze/IDozeHost$Stub;->startDozing()V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    return v6

    .line 72
    :sswitch_4
    const-string/jumbo v5, "com.android.systemui.doze.IDozeHost"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/doze/IDozeHostPulseCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/doze/IDozeHostPulseCallback;

    move-result-object v1

    .line 76
    .local v1, "_arg0":Lcom/android/systemui/doze/IDozeHostPulseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 77
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/doze/IDozeHost$Stub;->pulseWhileDozing(Lcom/android/systemui/doze/IDozeHostPulseCallback;I)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    return v6

    .line 83
    .end local v1    # "_arg0":Lcom/android/systemui/doze/IDozeHostPulseCallback;
    .end local v3    # "_arg1":I
    :sswitch_5
    const-string/jumbo v5, "com.android.systemui.doze.IDozeHost"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/doze/IDozeHost$Stub;->stopDozing()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    return v6

    .line 90
    :sswitch_6
    const-string/jumbo v7, "com.android.systemui.doze.IDozeHost"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/doze/IDozeHost$Stub;->isPowerSaveActive()Z

    move-result v4

    .line 92
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return v6

    .line 98
    .end local v4    # "_result":Z
    :sswitch_7
    const-string/jumbo v7, "com.android.systemui.doze.IDozeHost"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/doze/IDozeHost$Stub;->isNotificationLightOn()Z

    move-result v4

    .line 100
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return v6

    .line 106
    .end local v4    # "_result":Z
    :sswitch_8
    const-string/jumbo v7, "com.android.systemui.doze.IDozeHost"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/doze/IDozeHost$Stub;->isPulsingBlocked()Z

    move-result v4

    .line 108
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v4, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return v6

    .line 114
    .end local v4    # "_result":Z
    :sswitch_9
    const-string/jumbo v5, "com.android.systemui.doze.IDozeHost"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/doze/IDozeHost$Stub;->abortPulsing()V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    return v6

    .line 121
    :sswitch_a
    const-string/jumbo v5, "com.android.systemui.doze.IDozeHost"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/doze/IDozeHost$Stub;->dozeTimeTick()V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    return v6

    .line 128
    :sswitch_b
    const-string/jumbo v5, "com.android.systemui.doze.IDozeHost"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/doze/IDozeHost$Stub;->extendPulse()V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    return v6

    .line 135
    :sswitch_c
    const-string/jumbo v5, "com.android.systemui.doze.IDozeHost"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    .line 138
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/doze/IDozeHost$Stub;->setAnimateWakeup(Z)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    return v6

    .line 137
    .end local v2    # "_arg0":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_0

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
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
