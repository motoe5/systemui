.class Lcom/android/systemui/statusbar/phone/StatusBar$21;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/StatusBar$21;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/StatusBar$21;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar$21;->superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 6097
    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    .line 1
    return-void
.end method

.method private findRemoteInputView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 6292
    if-nez p1, :cond_0

    .line 6293
    return-object v0

    .line 6295
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-object v0
.end method

.method private getNotificationKeyForParent(Landroid/view/ViewParent;)Ljava/lang/String;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewParent;

    .prologue
    const/4 v1, 0x0

    .line 6176
    :goto_0
    if-eqz p1, :cond_1

    .line 6177
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 6178
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "parent":Landroid/view/ViewParent;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6180
    .restart local p1    # "parent":Landroid/view/ViewParent;
    :cond_0
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    .line 6182
    :cond_1
    return-object v1
.end method

.method private handleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 24
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 6192
    const v20, 0x1020391

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v15

    .line 6193
    .local v15, "tag":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 6194
    .local v9, "inputs":[Landroid/app/RemoteInput;
    instance-of v0, v15, [Landroid/app/RemoteInput;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object v9, v15

    .line 6195
    check-cast v9, [Landroid/app/RemoteInput;

    .line 6198
    .end local v9    # "inputs":[Landroid/app/RemoteInput;
    :cond_0
    if-nez v9, :cond_1

    .line 6199
    const/16 v20, 0x0

    return v20

    .line 6202
    :cond_1
    const/4 v8, 0x0

    .line 6204
    .local v8, "input":Landroid/app/RemoteInput;
    const/16 v20, 0x0

    array-length v0, v9

    move/from16 v21, v0

    .end local v8    # "input":Landroid/app/RemoteInput;
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    aget-object v6, v9, v20

    .line 6205
    .local v6, "i":Landroid/app/RemoteInput;
    invoke-virtual {v6}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 6206
    move-object v8, v6

    .line 6204
    :cond_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 6210
    .end local v6    # "i":Landroid/app/RemoteInput;
    :cond_3
    if-nez v8, :cond_4

    .line 6211
    const/16 v20, 0x0

    return v20

    .line 6214
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .line 6215
    .local v10, "p":Landroid/view/ViewParent;
    const/4 v13, 0x0

    .line 6216
    .local v13, "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    :goto_1
    if-eqz v10, :cond_5

    .line 6217
    instance-of v0, v10, Landroid/view/View;

    move/from16 v20, v0

    if-eqz v20, :cond_7

    move-object v11, v10

    .line 6218
    check-cast v11, Landroid/view/View;

    .line 6219
    .local v11, "pv":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->isRootNamespace()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 6220
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/phone/StatusBar$21;->findRemoteInputView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v13

    .line 6226
    .end local v11    # "pv":Landroid/view/View;
    .end local v13    # "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    :cond_5
    const/4 v14, 0x0

    .line 6227
    .local v14, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :goto_2
    if-eqz v10, :cond_6

    .line 6228
    instance-of v0, v10, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    move-object v14, v10

    .line 6229
    check-cast v14, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 6235
    .end local v14    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_6
    if-nez v14, :cond_9

    .line 6236
    const/16 v20, 0x0

    return v20

    .line 6224
    .restart local v13    # "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    :cond_7
    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    goto :goto_1

    .line 6232
    .end local v13    # "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .restart local v14    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_8
    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    goto :goto_2

    .line 6239
    .end local v14    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_9
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 6241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAllowLockscreenRemoteInput:Z

    move/from16 v20, v0

    if-nez v20, :cond_b

    .line 6242
    invoke-virtual/range {p2 .. p2}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v17

    .line 6243
    .local v17, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLockscreenPublicMode(I)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 6244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v14, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLockedRemoteInput(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    .line 6245
    const/16 v20, 0x1

    return v20

    .line 6247
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get14(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/os/UserManager;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 6248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v20

    .line 6247
    if-eqz v20, :cond_b

    .line 6249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLockedWorkRemoteInput(ILcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    .line 6250
    const/16 v20, 0x1

    return v20

    .line 6254
    .end local v17    # "userId":I
    :cond_b
    if-nez v13, :cond_d

    .line 6255
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$21;->findRemoteInputView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v13

    .line 6256
    .local v13, "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    if-nez v13, :cond_c

    .line 6257
    const/16 v20, 0x0

    return v20

    .line 6259
    :cond_c
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->isShown()Z

    move-result v20

    if-nez v20, :cond_d

    .line 6260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v14, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onMakeExpandedVisibleForRemoteInput(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    .line 6261
    const/16 v20, 0x1

    return v20

    .line 6265
    .end local v13    # "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v19

    .line 6266
    .local v19, "width":I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v16, p1

    .line 6268
    check-cast v16, Landroid/widget/TextView;

    .line 6269
    .local v16, "tv":Landroid/widget/TextView;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v20

    if-eqz v20, :cond_e

    .line 6270
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v7, v0

    .line 6271
    .local v7, "innerWidth":I
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v20

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v21

    add-int v20, v20, v21

    add-int v7, v7, v20

    .line 6272
    move/from16 v0, v19

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 6275
    .end local v7    # "innerWidth":I
    .end local v16    # "tv":Landroid/widget/TextView;
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v20

    div-int/lit8 v21, v19, 0x2

    add-int v3, v20, v21

    .line 6276
    .local v3, "cx":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v4, v20, v21

    .line 6277
    .local v4, "cy":I
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getWidth()I

    move-result v18

    .line 6278
    .local v18, "w":I
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getHeight()I

    move-result v5

    .line 6280
    .local v5, "h":I
    add-int v20, v3, v4

    sub-int v21, v5, v4

    add-int v21, v21, v3

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 6281
    sub-int v21, v18, v3

    add-int v21, v21, v4

    sub-int v22, v18, v3

    sub-int v23, v5, v4

    add-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 6279
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 6283
    .local v12, "r":I
    invoke-virtual {v13, v3, v4, v12}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRevealParameters(III)V

    .line 6284
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 6285
    invoke-virtual {v13, v9, v8}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoteInput([Landroid/app/RemoteInput;Landroid/app/RemoteInput;)V

    .line 6286
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focusAnimated()V

    .line 6288
    const/16 v20, 0x1

    return v20
.end method

.method private logActionClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6155
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 6156
    .local v4, "parent":Landroid/view/ViewParent;
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/StatusBar$21;->getNotificationKeyForParent(Landroid/view/ViewParent;)Ljava/lang/String;

    move-result-object v3

    .line 6157
    .local v3, "key":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 6158
    const-string/jumbo v5, "StatusBar"

    const-string/jumbo v6, "Couldn\'t determine notification for click."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6159
    return-void

    .line 6161
    :cond_0
    const/4 v2, -0x1

    .line 6163
    .local v2, "index":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x102017a

    if-ne v5, v6, :cond_1

    .line 6164
    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/view/ViewGroup;

    .line 6163
    if-eqz v5, :cond_1

    move-object v0, v4

    .line 6165
    check-cast v0, Landroid/view/ViewGroup;

    .line 6166
    .local v0, "actionGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 6169
    .end local v0    # "actionGroup":Landroid/view/ViewGroup;
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v5, v3, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationActionClick(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6173
    :goto_0
    return-void

    .line 6170
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 6188
    const/4 v0, 0x1

    .line 6187
    invoke-super {p0, p1, p2, p3, v0}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    .line 6102
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;)V

    .line 6105
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar$21;->handleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6106
    return v8

    .line 6112
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$21;->logActionClick(Landroid/view/View;)V

    .line 6118
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6121
    :goto_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    .line 6122
    .local v2, "isActivity":Z
    if-eqz v2, :cond_1

    .line 6123
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v3

    .line 6125
    .local v3, "keyguardShowing":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    .line 6124
    invoke-static {v4, v5, v6}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    .line 6126
    .local v0, "afterKeyguardGone":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBar$21$1;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar$21$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$21;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    invoke-virtual {v4, v5, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 6148
    return v8

    .line 6150
    .end local v0    # "afterKeyguardGone":Z
    .end local v3    # "keyguardShowing":Z
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar$21;->superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v4

    return v4

    .line 6119
    .end local v2    # "isActivity":Z
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
