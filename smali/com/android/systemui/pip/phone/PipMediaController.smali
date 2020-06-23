.class public Lcom/android/systemui/pip/phone/PipMediaController;
.super Ljava/lang/Object;
.source "PipMediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipMediaController$1;,
        Lcom/android/systemui/pip/phone/PipMediaController$2;,
        Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;
    }
.end annotation


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaController:Landroid/media/session/MediaController;

.field private final mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mNextAction:Landroid/app/RemoteAction;

.field private mPauseAction:Landroid/app/RemoteAction;

.field private mPlayAction:Landroid/app/RemoteAction;

.field private mPlayPauseActionReceiver:Landroid/content/BroadcastReceiver;

.field private mPlaybackChangedListener:Landroid/media/session/MediaController$Callback;

.field private mPrevAction:Landroid/app/RemoteAction;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/pip/phone/PipMediaController;)Landroid/media/session/MediaController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMediaController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/pip/phone/PipMediaController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMediaController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->notifyActionsChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v1, Lcom/android/systemui/pip/phone/PipMediaController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/PipMediaController$1;-><init>(Lcom/android/systemui/pip/phone/PipMediaController;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlayPauseActionReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    new-instance v1, Lcom/android/systemui/pip/phone/PipMediaController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/PipMediaController$2;-><init>(Lcom/android/systemui/pip/phone/PipMediaController;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlaybackChangedListener:Landroid/media/session/MediaController$Callback;

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    .line 101
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mActivityManager:Landroid/app/IActivityManager;

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, "mediaControlFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.android.systemui.pip.phone.PLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v1, "com.android.systemui.pip.phone.PAUSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string/jumbo v1, "com.android.systemui.pip.phone.NEXT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string/jumbo v1, "com.android.systemui.pip.phone.PREV"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlayPauseActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->createMediaActions()V

    .line 112
    const-string/jumbo v1, "media_session"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager;

    .line 111
    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 113
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    new-instance v2, Lcom/android/systemui/pip/phone/-$Lambda$M-ZooI5stUmj1n2x6aQGdCZpBH4;

    invoke-direct {v2, p0}, Lcom/android/systemui/pip/phone/-$Lambda$M-ZooI5stUmj1n2x6aQGdCZpBH4;-><init>(Ljava/lang/Object;)V

    .line 115
    const/4 v3, 0x0

    .line 113
    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    .line 116
    return-void
.end method

.method private createMediaActions()V
    .locals 11

    .prologue
    const/high16 v10, 0x8000000

    const/4 v9, 0x0

    .line 178
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    const v5, 0x7f110391

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "pauseDescription":Ljava/lang/String;
    new-instance v4, Landroid/app/RemoteAction;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    .line 180
    const v6, 0x7f08019f

    .line 179
    invoke-static {v5, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 181
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.systemui.pip.phone.PAUSE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v9, v7, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 179
    invoke-direct {v4, v5, v1, v1, v6}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object v4, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPauseAction:Landroid/app/RemoteAction;

    .line 184
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    const v5, 0x7f110396

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "playDescription":Ljava/lang/String;
    new-instance v4, Landroid/app/RemoteAction;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    .line 186
    const v6, 0x7f0801a2

    .line 185
    invoke-static {v5, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 187
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.systemui.pip.phone.PLAY"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v9, v7, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 185
    invoke-direct {v4, v5, v2, v2, v6}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object v4, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlayAction:Landroid/app/RemoteAction;

    .line 190
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    const v5, 0x7f110398

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "nextDescription":Ljava/lang/String;
    new-instance v4, Landroid/app/RemoteAction;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    .line 192
    const v6, 0x7f080203

    .line 191
    invoke-static {v5, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 193
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.systemui.pip.phone.NEXT"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v9, v7, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 191
    invoke-direct {v4, v5, v0, v0, v6}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object v4, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    .line 196
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    const v5, 0x7f110399

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "prevDescription":Ljava/lang/String;
    new-instance v4, Landroid/app/RemoteAction;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    .line 198
    const v6, 0x7f080204

    .line 197
    invoke-static {v5, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 199
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.systemui.pip.phone.PREV"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v9, v7, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 197
    invoke-direct {v4, v5, v3, v3, v6}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object v4, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    .line 201
    return-void
.end method

.method private getMediaActions()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v12, 0x0

    .line 148
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v5

    if-nez v5, :cond_1

    .line 149
    :cond_0
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v5

    .line 152
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v3, "mediaActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/RemoteAction;>;"
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getState()I

    move-result v4

    .line 154
    .local v4, "state":I
    invoke-static {v4}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v2

    .line 155
    .local v2, "isPlaying":Z
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v0

    .line 158
    .local v0, "actions":J
    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    const-wide/16 v10, 0x10

    and-long/2addr v10, v0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_3

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/app/RemoteAction;->setEnabled(Z)V

    .line 159
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    if-nez v2, :cond_4

    const-wide/16 v8, 0x4

    and-long/2addr v8, v0

    cmp-long v5, v8, v12

    if-eqz v5, :cond_4

    .line 163
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlayAction:Landroid/app/RemoteAction;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    const-wide/16 v8, 0x20

    and-long/2addr v8, v0

    cmp-long v8, v8, v12

    if-eqz v8, :cond_5

    :goto_2
    invoke-virtual {v5, v6}, Landroid/app/RemoteAction;->setEnabled(Z)V

    .line 170
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    return-object v3

    :cond_3
    move v5, v7

    .line 158
    goto :goto_0

    .line 164
    :cond_4
    if-eqz v2, :cond_2

    const-wide/16 v8, 0x2

    and-long/2addr v8, v0

    cmp-long v5, v8, v12

    if-eqz v5, :cond_2

    .line 165
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPauseAction:Landroid/app/RemoteAction;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move v6, v7

    .line 169
    goto :goto_2
.end method

.method static synthetic lambda$-com_android_systemui_pip_phone_PipMediaController_9794(Ljava/util/List;Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

    .prologue
    .line 247
    .local p0, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    invoke-interface {p1, p0}, Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;->onMediaActionsChanged(Ljava/util/List;)V

    return-void
.end method

.method private notifyActionsChanged()V
    .locals 3

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->getMediaActions()Ljava/util/List;

    move-result-object v0

    .line 247
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/pip/phone/-$Lambda$M-ZooI5stUmj1n2x6aQGdCZpBH4$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/pip/phone/-$Lambda$M-ZooI5stUmj1n2x6aQGdCZpBH4$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 249
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    :cond_0
    return-void
.end method

.method private resolveActiveMediaController(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    const/4 v5, 0x0

    .line 207
    if-eqz p1, :cond_1

    .line 208
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    .line 209
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mActivityManager:Landroid/app/IActivityManager;

    .line 208
    invoke-static {v3, v4}, Lcom/android/systemui/pip/phone/PipUtils;->getTopPinnedActivity(Landroid/content/Context;Landroid/app/IActivityManager;)Landroid/content/ComponentName;

    move-result-object v2

    .line 210
    .local v2, "topActivity":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 211
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 212
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 213
    .local v0, "controller":Landroid/media/session/MediaController;
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMediaController;->setActiveMediaController(Landroid/media/session/MediaController;)V

    .line 215
    return-void

    .line 211
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .end local v0    # "controller":Landroid/media/session/MediaController;
    .end local v1    # "i":I
    .end local v2    # "topActivity":Landroid/content/ComponentName;
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/systemui/pip/phone/PipMediaController;->setActiveMediaController(Landroid/media/session/MediaController;)V

    .line 221
    return-void
.end method

.method private setActiveMediaController(Landroid/media/session/MediaController;)V
    .locals 2
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eq p1, v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlaybackChangedListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 231
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    .line 232
    if-eqz p1, :cond_1

    .line 233
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlaybackChangedListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 235
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->notifyActionsChanged()V

    .line 239
    :cond_2
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->getMediaActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;->onMediaActionsChanged(Ljava/util/List;)V

    .line 134
    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMediaController_4415(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 114
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMediaController;->resolveActiveMediaController(Ljava/util/List;)V

    return-void
.end method

.method public onActivityPinned()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMediaController;->resolveActiveMediaController(Ljava/util/List;)V

    .line 124
    return-void
.end method

.method public removeListener(Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

    .prologue
    .line 140
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;->onMediaActionsChanged(Ljava/util/List;)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method
