.class public Lcom/android/systemui/statusbar/NotificationInfo;
.super Landroid/widget/LinearLayout;
.source "NotificationInfo.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;,
        Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;,
        Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;
    }
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppSettingsClickListener:Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;

.field private mAppUid:I

.field private mChannelDisabledView:Landroid/view/View;

.field private mChannelEnabledSwitch:Landroid/widget/Switch;

.field private mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

.field private mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mIsSingleDefaultChannel:Z

.field private mNotificationChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mNumChannelsView:Landroid/widget/TextView;

.field private mPkg:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mSettingsLinkView:Landroid/widget/TextView;

.field private mSingleNotificationChannel:Landroid/app/NotificationChannel;

.field private mStartingUserImportance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method private bindButtons(Z)V
    .locals 4
    .param p1, "nonBlockable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 306
    const v1, 0x7f0a007a

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    .line 307
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    .line 308
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 307
    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 309
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 310
    .local v0, "visible":Z
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 313
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/systemui/statusbar/-$Lambda$pfzrTzW0pwWr_NOaX9rVE6jh0v8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/-$Lambda$pfzrTzW0pwWr_NOaX9rVE6jh0v8;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 320
    return-void

    .end local v0    # "visible":Z
    :cond_0
    move v1, v2

    .line 308
    goto :goto_0

    .line 309
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "visible":Z
    goto :goto_1

    .line 310
    :cond_2
    const/4 v2, 0x4

    goto :goto_2
.end method

.method private getAppSettingsIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILjava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "channel"    # Landroid/app/NotificationChannel;
    .param p4, "id"    # I
    .param p5, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 368
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    const-string/jumbo v4, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 368
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 373
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000

    .line 371
    invoke-virtual {p1, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 375
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 376
    :cond_0
    return-object v5

    .line 375
    :cond_1
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 378
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 379
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    if-eqz p3, :cond_2

    .line 381
    const-string/jumbo v3, "android.intent.extra.CHANNEL_ID"

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    :cond_2
    const-string/jumbo v3, "android.intent.extra.NOTIFICATION_ID"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    const-string/jumbo v3, "android.intent.extra.NOTIFICATION_TAG"

    invoke-virtual {v1, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    return-object v1
.end method

.method private getSelectedImportance()I
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x0

    return v0

    .line 300
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    return v0
.end method

.method private hasImportanceChanged()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 274
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 276
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getSelectedImportance()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 274
    :cond_0
    return v0
.end method

.method private saveImportance()V
    .locals 6

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->hasImportanceChanged()Z

    move-result v2

    if-nez v2, :cond_0

    .line 281
    return-void

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getSelectedImportance()I

    move-result v1

    .line 284
    .local v1, "selectedImportance":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    .line 285
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    sub-int v3, v1, v3

    .line 284
    const/16 v4, 0x123

    invoke-static {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 286
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 287
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 289
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 290
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 289
    invoke-interface {v2, v3, v4, v5}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updateAppSettingsLink()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 350
    const v0, 0x7f0a0040

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSettingsLinkView:Landroid/widget/TextView;

    .line 351
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 351
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationInfo;->getAppSettingsIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 353
    .local v6, "settingsIntent":Landroid/content/Intent;
    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getSelectedImportance()I

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSettingsText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 353
    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSettingsLinkView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSettingsLinkView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 357
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getSettingsText()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v7

    .line 356
    const v3, 0x7f110366

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSettingsLinkView:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/-$Lambda$pfzrTzW0pwWr_NOaX9rVE6jh0v8$2;

    invoke-direct {v1, p0, v6}, Lcom/android/systemui/statusbar/-$Lambda$pfzrTzW0pwWr_NOaX9rVE6jh0v8$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSettingsLinkView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSecondaryText()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 338
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_1

    .line 339
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getSelectedImportance()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 340
    .local v0, "disabled":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 341
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelDisabledView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNumChannelsView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    :goto_1
    return-void

    .line 339
    .end local v0    # "disabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "disabled":Z
    goto :goto_0

    .line 338
    .end local v0    # "disabled":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "disabled":Z
    goto :goto_0

    .line 344
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelDisabledView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNumChannelsView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsSingleDefaultChannel:Z

    if-eqz v3, :cond_3

    const/4 v1, 0x4

    :cond_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Ljava/lang/String;Ljava/util/List;ILandroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;Landroid/view/View$OnClickListener;Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;Ljava/util/Set;)V
    .locals 24
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "iNotificationManager"    # Landroid/app/INotificationManager;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p5, "startingUserImportance"    # I
    .param p6, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p7, "onSettingsClick"    # Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;
    .param p8, "onAppSettingsClick"    # Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;
    .param p9, "onDoneClick"    # Landroid/view/View$OnClickListener;
    .param p10, "checkSaveListener"    # Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/app/INotificationManager;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/NotificationChannel;",
            ">;I",
            "Landroid/service/notification/StatusBarNotification;",
            "Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;",
            "Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;",
            "Landroid/view/View$OnClickListener;",
            "Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    .local p4, "notificationChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    .local p11, "nonBlockablePkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 113
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mPkg:Ljava/lang/String;

    .line 114
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    .line 115
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    .line 116
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 117
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 118
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mAppSettingsClickListener:Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;

    .line 119
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mPkg:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mAppName:Ljava/lang/String;

    .line 121
    const/16 v18, 0x0

    .line 122
    .local v18, "pkgicon":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v5, ""

    .line 123
    .local v5, "channelNameText":Ljava/lang/CharSequence;
    const/4 v12, 0x0

    .line 125
    .local v12, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mPkg:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 126
    const v21, 0xc2200

    .line 125
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 130
    .local v12, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v12, :cond_0

    .line 131
    iget v0, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    .line 132
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mAppName:Ljava/lang/String;

    .line 133
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 139
    .end local v12    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v18    # "pkgicon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    const v20, 0x7f0a0202

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    move/from16 v20, v0

    const/16 v21, 0x0

    .line 141
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Landroid/app/INotificationManager;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result v16

    .line 143
    .local v16, "numTotalChannels":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 144
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "bindNotification requires at least one channel"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 135
    .end local v16    # "numTotalChannels":I
    .restart local v18    # "pkgicon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v8

    .line 137
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .local v18, "pkgicon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 146
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v18    # "pkgicon":Landroid/graphics/drawable/Drawable;
    .restart local v16    # "numTotalChannels":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/NotificationChannel;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v20

    .line 151
    const-string/jumbo v21, "miscellaneous"

    .line 150
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 152
    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-gt v0, v1, :cond_4

    const/16 v20, 0x1

    .line 149
    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mIsSingleDefaultChannel:Z

    .line 160
    :goto_2
    const v20, 0x7f0a01f3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mNumChannelsView:Landroid/widget/TextView;

    .line 161
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsSingleDefaultChannel:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f110372

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, "channelsDescText":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNumChannelsView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v20, v0

    if-nez v20, :cond_8

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    .line 191
    const v22, 0x7f11037a

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 199
    :goto_4
    const v20, 0x7f0a0203

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    const v20, 0x7f0a007b

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    const/4 v10, 0x0

    .line 204
    .local v10, "groupName":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    move/from16 v21, v0

    .line 206
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Landroid/app/INotificationManager;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v14

    .line 208
    .local v14, "notificationChannelGroup":Landroid/app/NotificationChannelGroup;
    if-eqz v14, :cond_2

    .line 209
    invoke-virtual {v14}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v10

    .line 212
    .end local v10    # "groupName":Ljava/lang/CharSequence;
    .end local v14    # "notificationChannelGroup":Landroid/app/NotificationChannelGroup;
    :cond_2
    const v20, 0x7f0a00ef

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 213
    .local v11, "groupNameView":Landroid/widget/TextView;
    const v20, 0x7f0a0201

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 214
    .local v9, "groupDividerView":Landroid/widget/TextView;
    if-eqz v10, :cond_a

    .line 215
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    :goto_5
    const/4 v13, 0x0

    .line 225
    .local v13, "nonBlockable":Z
    const/16 v20, 0x40

    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    .line 226
    .local v17, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/NotificationChannel;->isBlockableSystem()Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v20

    xor-int/lit8 v13, v20, 0x1

    .line 232
    .end local v13    # "nonBlockable":Z
    .end local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_6
    if-eqz p11, :cond_3

    .line 235
    move-object/from16 v0, p11

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_d

    invoke-static/range {p3 .. p3}, Lcom/motorola/settingslib/InstalledAppUtils;->isPackageRemoveBlockAll(Ljava/lang/String;)Z

    move-result v20

    :goto_7
    or-int v13, v13, v20

    .line 239
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/statusbar/NotificationInfo;->bindButtons(Z)V

    .line 242
    const v20, 0x7f0a0079

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelDisabledView:Landroid/view/View;

    .line 243
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationInfo;->updateSecondaryText()V

    .line 246
    const v20, 0x7f0a01ad

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 247
    .local v19, "settingsButton":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    move/from16 v20, v0

    if-ltz v20, :cond_f

    if-eqz p7, :cond_f

    .line 248
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppUid:I

    .line 251
    .local v4, "appUidF":I
    new-instance v20, Lcom/android/systemui/statusbar/-$Lambda$pfzrTzW0pwWr_NOaX9rVE6jh0v8$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    invoke-direct {v0, v4, v1, v2}, Lcom/android/systemui/statusbar/-$Lambda$pfzrTzW0pwWr_NOaX9rVE6jh0v8$3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 250
    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_e

    .line 255
    const v20, 0x7f110365

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 265
    .end local v4    # "appUidF":I
    :goto_8
    const v20, 0x7f0a00c1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 266
    .local v7, "doneButton":Landroid/widget/TextView;
    const v20, 0x7f110373

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 267
    move-object/from16 v0, p9

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationInfo;->updateAppSettingsLink()V

    .line 271
    return-void

    .line 152
    .end local v6    # "channelsDescText":Ljava/lang/String;
    .end local v7    # "doneButton":Landroid/widget/TextView;
    .end local v9    # "groupDividerView":Landroid/widget/TextView;
    .end local v11    # "groupNameView":Landroid/widget/TextView;
    .end local v19    # "settingsButton":Landroid/widget/TextView;
    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 150
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 154
    :cond_6
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 155
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/NotificationInfo;->mIsSingleDefaultChannel:Z

    goto/16 :goto_2

    .line 164
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v15, v20, -0x2

    .line 179
    .local v15, "numOthers":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 180
    const v21, 0x7f0f0005

    .line 179
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v21

    .line 178
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v20, v0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/NotificationChannel;

    invoke-virtual/range {v20 .. v20}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v20

    const/16 v23, 0x0

    aput-object v20, v22, v23

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v20, v0

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/NotificationChannel;

    invoke-virtual/range {v20 .. v20}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v20

    const/16 v23, 0x1

    aput-object v20, v22, v23

    .line 184
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v23, 0x2

    aput-object v20, v22, v23

    .line 178
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "channelsDescText":Ljava/lang/String;
    goto/16 :goto_3

    .line 166
    .end local v6    # "channelsDescText":Ljava/lang/String;
    .end local v15    # "numOthers":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 167
    const v21, 0x7f0f0007

    .line 166
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 168
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    .line 166
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "channelsDescText":Ljava/lang/String;
    goto/16 :goto_3

    .line 171
    .end local v6    # "channelsDescText":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v20, v0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/NotificationChannel;

    invoke-virtual/range {v20 .. v20}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v20

    const/16 v23, 0x0

    aput-object v20, v22, v23

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v20, v0

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/NotificationChannel;

    invoke-virtual/range {v20 .. v20}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v20

    const/16 v23, 0x1

    aput-object v20, v22, v23

    .line 172
    const v20, 0x7f110371

    .line 171
    move-object/from16 v0, v21

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "channelsDescText":Ljava/lang/String;
    goto/16 :goto_3

    .line 193
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsSingleDefaultChannel:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f110375

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 197
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    goto/16 :goto_4

    .line 219
    .restart local v9    # "groupDividerView":Landroid/widget/TextView;
    .restart local v11    # "groupNameView":Landroid/widget/TextView;
    :cond_a
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 227
    .restart local v13    # "nonBlockable":Z
    .restart local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_b
    const/4 v13, 0x1

    goto/16 :goto_6

    .line 226
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_6

    .line 235
    .end local v13    # "nonBlockable":Z
    .end local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_d
    const/16 v20, 0x1

    goto/16 :goto_7

    .line 257
    .restart local v4    # "appUidF":I
    .restart local v19    # "settingsButton":Landroid/widget/TextView;
    :cond_e
    const v20, 0x7f110379

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_8

    .line 261
    .end local v4    # "appUidF":I
    :cond_f
    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    .line 229
    .end local v19    # "settingsButton":Landroid/widget/TextView;
    .restart local v13    # "nonBlockable":Z
    :catch_1
    move-exception v8

    .restart local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_6

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getActualHeight()I
    .locals 1

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getHeight()I

    move-result v0

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    .prologue
    .line 400
    return-object p0
.end method

.method public handleCloseControls(ZZ)Z
    .locals 2
    .param p1, "save"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 405
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->hasImportanceChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    new-instance v1, Lcom/android/systemui/statusbar/-$Lambda$pfzrTzW0pwWr_NOaX9rVE6jh0v8$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$Lambda$pfzrTzW0pwWr_NOaX9rVE6jh0v8$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;->checkSave(Ljava/lang/Runnable;)V

    .line 412
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 409
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->saveImportance()V

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_NotificationInfo_10966(Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;ILandroid/view/View;)V
    .locals 1
    .param p1, "onSettingsClick"    # Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;
    .param p2, "appUidF"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-interface {p1, p3, v0, p2}, Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;->onClick(Landroid/view/View;Landroid/app/NotificationChannel;I)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_NotificationInfo_13344(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->updateSecondaryText()V

    .line 318
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->updateAppSettingsLink()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_NotificationInfo_15422(Landroid/content/Intent;Landroid/view/View;)V
    .locals 1
    .param p1, "settingsIntent"    # Landroid/content/Intent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppSettingsClickListener:Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;

    invoke-interface {v0, p2, p1}, Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;->onClick(Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_NotificationInfo_17206()V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->saveImportance()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 324
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    .line 329
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppName:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f11036a

    .line 328
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    .line 332
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mAppName:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f110369

    .line 331
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0
    .param p1, "guts"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 391
    return-void
.end method

.method public willBeRemoved()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
