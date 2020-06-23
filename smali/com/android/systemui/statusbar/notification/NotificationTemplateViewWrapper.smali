.class public Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;
.source "NotificationTemplateViewWrapper.java"


# instance fields
.field private mActionsContainer:Landroid/view/View;

.field private mContentHeight:I

.field private mMinHeightHint:I

.field protected mPicture:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 52
    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;)V

    .line 114
    const/4 v2, 0x2

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V

    .line 115
    return-void
.end method

.method private fadeProgressDark(Landroid/widget/ProgressBar;ZJ)V
    .locals 7
    .param p1, "target"    # Landroid/widget/ProgressBar;
    .param p2, "dark"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/notification/-$Lambda$R3NEfaGhS-RBqZKozP-Fc-aGb00;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/-$Lambda$R3NEfaGhS-RBqZKozP-Fc-aGb00;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    const/4 v6, 0x0

    move v3, p2

    move-wide v4, p3

    .line 195
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 199
    return-void
.end method

.method private static interpolateColor(IIF)I
    .locals 13
    .param p0, "source"    # I
    .param p1, "target"    # I
    .param p2, "t"    # F

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    .line 218
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 219
    .local v0, "aSource":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .line 220
    .local v6, "rSource":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 221
    .local v4, "gSource":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 222
    .local v2, "bSource":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 223
    .local v1, "aTarget":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 224
    .local v7, "rTarget":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 225
    .local v5, "gTarget":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 227
    .local v3, "bTarget":I
    int-to-float v8, v0

    sub-float v9, v12, p2

    mul-float/2addr v8, v9

    int-to-float v9, v1

    mul-float/2addr v9, p2

    add-float/2addr v8, v9

    float-to-int v8, v8

    .line 228
    int-to-float v9, v6

    sub-float v10, v12, p2

    mul-float/2addr v9, v10

    int-to-float v10, v7

    mul-float/2addr v10, p2

    add-float/2addr v9, v10

    float-to-int v9, v9

    .line 229
    int-to-float v10, v4

    sub-float v11, v12, p2

    mul-float/2addr v10, v11

    int-to-float v11, v5

    mul-float/2addr v11, p2

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 230
    int-to-float v11, v2

    sub-float/2addr v12, p2

    mul-float/2addr v11, v12

    int-to-float v12, v3

    mul-float/2addr v12, p2

    add-float/2addr v11, v12

    float-to-int v11, v11

    .line 226
    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    return v8
.end method

.method private resolveTemplateViews(Landroid/service/notification/StatusBarNotification;)V
    .locals 5
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v4, 0x0

    .line 118
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x102039f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    .line 119
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    .line 121
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 120
    const v3, 0x7f0a011c

    invoke-virtual {v1, v3, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    .line 124
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x102041e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    .line 125
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x102000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, "progress":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1

    .line 127
    check-cast v0, Landroid/widget/ProgressBar;

    .end local v0    # "progress":Landroid/view/View;
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x1020192

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    .line 133
    return-void

    .line 130
    .restart local v0    # "progress":Landroid/view/View;
    :cond_1
    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0
.end method

.method private setPictureDark(ZZJ)V
    .locals 7
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    const/4 v6, 0x1

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->setImageDark(Landroid/widget/ImageView;ZZJZ)V

    .line 215
    :cond_0
    return-void
.end method

.method private setProgressBarDark(ZZJ)V
    .locals 1
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 186
    if-eqz p2, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->fadeProgressDark(Landroid/widget/ProgressBar;ZJ)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateProgressDark(Landroid/widget/ProgressBar;Z)V

    goto :goto_0
.end method

.method private updateActionOffset()V
    .locals 3

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 245
    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContentHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMinHeightHint:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 246
    .local v0, "constrainedContentHeight":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 248
    .end local v0    # "constrainedContentHeight":I
    :cond_0
    return-void
.end method

.method private updateProgressDark(Landroid/widget/ProgressBar;F)V
    .locals 3
    .param p1, "target"    # Landroid/widget/ProgressBar;
    .param p2, "intensity"    # F

    .prologue
    .line 202
    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mColor:I

    const/4 v2, -0x1

    invoke-static {v1, v2, p2}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->interpolateColor(IIF)I

    move-result v0

    .line 203
    .local v0, "color":I
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 204
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 205
    return-void
.end method

.method private updateProgressDark(Landroid/widget/ProgressBar;Z)V
    .locals 1
    .param p1, "target"    # Landroid/widget/ProgressBar;
    .param p2, "dark"    # Z

    .prologue
    .line 208
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateProgressDark(Landroid/widget/ProgressBar;F)V

    .line 209
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_notification_NotificationTemplateViewWrapper_8229(Landroid/widget/ProgressBar;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "target"    # Landroid/widget/ProgressBar;
    .param p2, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 196
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 197
    .local v0, "t":F
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateProgressDark(Landroid/widget/ProgressBar;F)V

    return-void
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 139
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->resolveTemplateViews(Landroid/service/notification/StatusBarNotification;)V

    .line 140
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 141
    return-void
.end method

.method public setContentHeight(II)V
    .locals 0
    .param p1, "contentHeight"    # I
    .param p2, "minHeightHint"    # I

    .prologue
    .line 235
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setContentHeight(II)V

    .line 237
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContentHeight:I

    .line 238
    iput p2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMinHeightHint:I

    .line 239
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateActionOffset()V

    .line 240
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mDark:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mDarkInitialized:Z

    if-eqz v0, :cond_0

    .line 177
    return-void

    .line 179
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setDark(ZZJ)V

    .line 180
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setPictureDark(ZZJ)V

    .line 181
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setProgressBarDark(ZZJ)V

    .line 182
    return-void
.end method

.method protected updateInvertHelper()V
    .locals 3

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateInvertHelper()V

    .line 146
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x1020330

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 147
    .local v0, "mainColumn":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/ViewInvertHelper;->addTarget(Landroid/view/View;)V

    .line 150
    :cond_0
    return-void
.end method

.method protected updateTransformedTypes()V
    .locals 3

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateTransformedTypes()V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 158
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    .line 157
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    .line 161
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 166
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    .line 165
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 170
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    .line 169
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 172
    :cond_3
    return-void
.end method
