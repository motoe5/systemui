.class public Lcom/android/systemui/statusbar/policy/CallbackHandler;
.super Landroid/os/Handler;
.source "CallbackHandler.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# instance fields
.field private mCarrierListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/moto/NetworkStateTracker$PanelCarrierLabelListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultDataSubListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/moto/NetworkStateTracker$DefaultDataSubscriptionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mEmergencyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mEriSoundListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/moto/NetworkStateTracker$EriSoundListener;",
            ">;"
        }
    .end annotation
.end field

.field private mShortFormLabelListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignalCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/CallbackHandler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/CallbackHandler;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mCarrierListeners:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mShortFormLabelListeners:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mDefaultDataSubListeners:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEriSoundListeners:Ljava/util/ArrayList;

    .line 83
    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mCarrierListeners:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mShortFormLabelListeners:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mDefaultDataSubListeners:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEriSoundListeners:Ljava/util/ArrayList;

    .line 88
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 93
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "listener$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;

    .line 96
    .local v5, "listener":Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_1

    move v11, v12

    :goto_2
    invoke-interface {v5, v11}, Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;->setEmergencyCallsOnly(Z)V

    goto :goto_1

    :cond_1
    move v11, v13

    goto :goto_2

    .line 100
    .end local v5    # "listener":Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;
    .end local v6    # "listener$iterator":Ljava/util/Iterator;
    :pswitch_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "signalCluster$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 101
    .local v9, "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    invoke-interface {v9, v11}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setSubs(Ljava/util/List;)V

    goto :goto_3

    .line 105
    .end local v9    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    .end local v10    # "signalCluster$iterator":Ljava/util/Iterator;
    :pswitch_2
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "signalCluster$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 106
    .restart local v9    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_2

    move v11, v12

    :goto_5
    invoke-interface {v9, v11}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setNoSims(Z)V

    goto :goto_4

    :cond_2
    move v11, v13

    goto :goto_5

    .line 110
    .end local v9    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    .end local v10    # "signalCluster$iterator":Ljava/util/Iterator;
    :pswitch_3
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "signalCluster$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 111
    .restart local v9    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-interface {v9, v11}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    goto :goto_6

    .line 115
    .end local v9    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    .end local v10    # "signalCluster$iterator":Ljava/util/Iterator;
    :pswitch_4
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "signalCluster$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 116
    .restart local v9    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-interface {v9, v11}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    goto :goto_7

    .line 120
    .end local v9    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    .end local v10    # "signalCluster$iterator":Ljava/util/Iterator;
    :pswitch_5
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "signalCluster$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 121
    .restart local v9    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_3

    move v11, v12

    :goto_9
    invoke-interface {v9, v11}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataEnabled(Z)V

    goto :goto_8

    :cond_3
    move v11, v13

    goto :goto_9

    .line 125
    .end local v9    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    .end local v10    # "signalCluster$iterator":Ljava/util/Iterator;
    :pswitch_6
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_4

    .line 126
    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 128
    :cond_4
    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 132
    :pswitch_7
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_5

    .line 133
    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 135
    :cond_5
    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 140
    :pswitch_8
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_6

    .line 141
    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mCarrierListeners:Ljava/util/ArrayList;

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/moto/NetworkStateTracker$PanelCarrierLabelListener;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 143
    :cond_6
    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mCarrierListeners:Ljava/util/ArrayList;

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/moto/NetworkStateTracker$PanelCarrierLabelListener;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 147
    :pswitch_9
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mCarrierListeners:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "listener$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/moto/NetworkStateTracker$PanelCarrierLabelListener;

    .line 148
    .local v3, "listener":Lcom/android/systemui/moto/NetworkStateTracker$PanelCarrierLabelListener;
    invoke-interface {v3}, Lcom/android/systemui/moto/NetworkStateTracker$PanelCarrierLabelListener;->updateLabel()V

    goto :goto_a

    .line 152
    .end local v3    # "listener":Lcom/android/systemui/moto/NetworkStateTracker$PanelCarrierLabelListener;
    .end local v6    # "listener$iterator":Ljava/util/Iterator;
    :pswitch_a
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_7

    .line 153
    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mShortFormLabelListeners:Ljava/util/ArrayList;

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 155
    :cond_7
    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mShortFormLabelListeners:Ljava/util/ArrayList;

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 159
    :pswitch_b
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mShortFormLabelListeners:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "listener$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;

    .line 160
    .local v4, "listener":Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;
    invoke-interface {v4}, Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;->updateLabel()V

    goto :goto_b

    .line 164
    .end local v4    # "listener":Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;
    .end local v6    # "listener$iterator":Ljava/util/Iterator;
    :pswitch_c
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_8

    .line 165
    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mDefaultDataSubListeners:Ljava/util/ArrayList;

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/moto/NetworkStateTracker$DefaultDataSubscriptionListener;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 167
    :cond_8
    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mDefaultDataSubListeners:Ljava/util/ArrayList;

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/moto/NetworkStateTracker$DefaultDataSubscriptionListener;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 171
    :pswitch_d
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mDefaultDataSubListeners:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "listener$iterator":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/moto/NetworkStateTracker$DefaultDataSubscriptionListener;

    .line 172
    .local v1, "listener":Lcom/android/systemui/moto/NetworkStateTracker$DefaultDataSubscriptionListener;
    invoke-interface {v1}, Lcom/android/systemui/moto/NetworkStateTracker$DefaultDataSubscriptionListener;->updateDefaultDataSubscription()V

    goto :goto_c

    .line 178
    .end local v1    # "listener":Lcom/android/systemui/moto/NetworkStateTracker$DefaultDataSubscriptionListener;
    .end local v6    # "listener$iterator":Ljava/util/Iterator;
    :pswitch_e
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_9

    .line 179
    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEriSoundListeners:Ljava/util/ArrayList;

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/moto/NetworkStateTracker$EriSoundListener;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 181
    :cond_9
    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEriSoundListeners:Ljava/util/ArrayList;

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/moto/NetworkStateTracker$EriSoundListener;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 185
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 186
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Landroid/telephony/ServiceState;

    .line 187
    .local v7, "nSS":Landroid/telephony/ServiceState;
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Landroid/telephony/ServiceState;

    .line 188
    .local v8, "oSS":Landroid/telephony/ServiceState;
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEriSoundListeners:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "listener$iterator":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/moto/NetworkStateTracker$EriSoundListener;

    .line 189
    .local v2, "listener":Lcom/android/systemui/moto/NetworkStateTracker$EriSoundListener;
    invoke-interface {v2, v7, v8}, Lcom/android/systemui/moto/NetworkStateTracker$EriSoundListener;->updateEri(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)V

    goto :goto_d

    .line 193
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "listener":Lcom/android/systemui/moto/NetworkStateTracker$EriSoundListener;
    .end local v6    # "listener$iterator":Ljava/util/Iterator;
    .end local v7    # "nSS":Landroid/telephony/ServiceState;
    .end local v8    # "oSS":Landroid/telephony/ServiceState;
    :pswitch_10
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEriSoundListeners:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "listener$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/moto/NetworkStateTracker$EriSoundListener;

    .line 194
    .restart local v2    # "listener":Lcom/android/systemui/moto/NetworkStateTracker$EriSoundListener;
    invoke-interface {v2}, Lcom/android/systemui/moto/NetworkStateTracker$EriSoundListener;->playEriSoundAfterBoot()V

    goto :goto_e

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public playEriSoundAfterBoot()V
    .locals 1

    .prologue
    .line 334
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 335
    return-void
.end method

.method public setCarrierLabelListening(Lcom/android/systemui/moto/NetworkStateTracker$PanelCarrierLabelListener;Z)V
    .locals 3
    .param p1, "listener"    # Lcom/android/systemui/moto/NetworkStateTracker$PanelCarrierLabelListener;
    .param p2, "listening"    # Z

    .prologue
    const/4 v1, 0x0

    .line 296
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 297
    return-void

    :cond_0
    move v0, v1

    .line 296
    goto :goto_0
.end method

.method public setEmergencyCallsOnly(Z)V
    .locals 2
    .param p1, "emergencyOnly"    # Z

    .prologue
    const/4 v1, 0x0

    .line 273
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 274
    return-void

    :cond_0
    move v0, v1

    .line 273
    goto :goto_0
.end method

.method public setEriSoundListening(Lcom/android/systemui/moto/NetworkStateTracker$EriSoundListener;Z)V
    .locals 3
    .param p1, "listener"    # Lcom/android/systemui/moto/NetworkStateTracker$EriSoundListener;
    .param p2, "listening"    # Z

    .prologue
    const/4 v1, 0x0

    .line 323
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0xe

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 324
    return-void

    :cond_0
    move v0, v1

    .line 323
    goto :goto_0
.end method

.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 1
    .param p1, "icon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .prologue
    .line 278
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 279
    return-void
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 1
    .param p1, "icon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .prologue
    .line 283
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 284
    return-void
.end method

.method public setListening(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;Z)V
    .locals 3
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;
    .param p2, "listening"    # Z

    .prologue
    const/4 v1, 0x0

    .line 287
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x6

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 288
    return-void

    :cond_0
    move v0, v1

    .line 287
    goto :goto_0
.end method

.method public setListening(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;Z)V
    .locals 3
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    .param p2, "listening"    # Z

    .prologue
    const/4 v1, 0x0

    .line 291
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x7

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 292
    return-void

    :cond_0
    move v0, v1

    .line 291
    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 268
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 269
    return-void

    :cond_0
    move v0, v1

    .line 268
    goto :goto_0
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/String;Ljava/lang/String;ZIZLcom/android/systemui/moto/ExtendedMobileDataInfo;)V
    .locals 14
    .param p1, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p2, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "statusType"    # I
    .param p4, "qsType"    # I
    .param p5, "activityIn"    # Z
    .param p6, "activityOut"    # Z
    .param p7, "typeContentDescription"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "isWide"    # Z
    .param p10, "subId"    # I
    .param p11, "roaming"    # Z
    .param p12, "mobileDataInfo"    # Lcom/android/systemui/moto/ExtendedMobileDataInfo;

    .prologue
    .line 244
    new-instance v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/String;Ljava/lang/String;ZIZLcom/android/systemui/moto/ExtendedMobileDataInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    .line 254
    return-void
.end method

.method public setNoSims(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x0

    .line 263
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 264
    return-void

    :cond_0
    move v0, v1

    .line 263
    goto :goto_0
.end method

.method public setOperaterNameListening(Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;Z)V
    .locals 3
    .param p1, "listener"    # Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;
    .param p2, "listening"    # Z

    .prologue
    const/4 v1, 0x0

    .line 304
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0xa

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 305
    return-void

    :cond_0
    move v0, v1

    .line 304
    goto :goto_0
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 259
    return-void
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLcom/android/systemui/moto/ExtendedWifiInfo;)V
    .locals 10
    .param p1, "enabled"    # Z
    .param p2, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p4, "activityIn"    # Z
    .param p5, "activityOut"    # Z
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "isTransient"    # Z
    .param p8, "wifiInfo"    # Lcom/android/systemui/moto/ExtendedWifiInfo;

    .prologue
    .line 216
    new-instance v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLcom/android/systemui/moto/ExtendedWifiInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    .line 225
    return-void
.end method

.method public updateEri(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "newServiceState"    # Landroid/telephony/ServiceState;
    .param p2, "preServiceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 327
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 328
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 329
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 330
    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 331
    return-void
.end method

.method public updatePanelCarrierLabel()V
    .locals 1

    .prologue
    .line 300
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 301
    return-void
.end method

.method public updateShortFormLabel()V
    .locals 1

    .prologue
    .line 308
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 309
    return-void
.end method
