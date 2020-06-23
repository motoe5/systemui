.class public Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
.source "NotificationHeaderViewWrapper.java"


# static fields
.field private static final LOW_PRIORITY_HEADER_CLOSE:Landroid/view/animation/Interpolator;


# instance fields
.field protected mColor:I

.field private mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field protected final mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

.field private mIsLowPriority:Z

.field private mNotificationHeader:Landroid/view/NotificationHeaderView;

.field private mTransformLowPriorityTitle:Z

.field protected final mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

.field private mWorkProfileImage:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->LOW_PRIORITY_HEADER_CLOSE:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIsLowPriority:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformLowPriorityTitle:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 50
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3f333333    # 0.7f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 49
    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->LOW_PRIORITY_HEADER_CLOSE:Landroid/view/animation/Interpolator;

    .line 47
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const/4 v4, 0x1

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 67
    new-instance v0, Lcom/android/systemui/ViewInvertHelper;

    const-wide/16 v2, 0x2bc

    invoke-direct {v0, p1, v2, v3}, Lcom/android/systemui/ViewInvertHelper;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    .line 68
    new-instance v0, Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 73
    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$1;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;I)V

    .line 72
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->resolveHeaderViews()V

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateInvertHelper()V

    .line 97
    return-void
.end method

.method private addRemainingTransformTypes()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addRemainingTransformTypes(Landroid/view/View;)V

    .line 167
    return-void
.end method

.method private resolveColor(Landroid/widget/ImageView;)I
    .locals 2
    .param p1, "icon"    # Landroid/widget/ImageView;

    .prologue
    .line 121
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 123
    .local v0, "filter":Landroid/graphics/ColorFilter;
    instance-of v1, v0, Landroid/graphics/PorterDuffColorFilter;

    if-eqz v1, :cond_0

    .line 124
    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    .end local v0    # "filter":Landroid/graphics/ColorFilter;
    invoke-virtual {v0}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v1

    return v1

    .line 127
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private updateCropToPaddingForImageViews()V
    .locals 5

    .prologue
    .line 175
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 176
    .local v3, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/view/View;>;"
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 178
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 179
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 180
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "child":Landroid/view/View;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setCropToPadding(Z)V

    goto :goto_0

    .line 181
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 182
    check-cast v1, Landroid/view/ViewGroup;

    .line 183
    .local v1, "group":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 184
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 188
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method protected createDozer(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 101
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 1
    .param p1, "fadingView"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getDozer()Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    move-result-object v0

    return-object v0
.end method

.method protected getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    return-object v0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    return-object v0
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 8
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const v7, 0x7f0a011c

    .line 132
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 133
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLowPriority()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIsLowPriority:Z

    .line 134
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformLowPriorityTitle:Z

    .line 135
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getAllTransformingViews()Landroid/util/ArraySet;

    move-result-object v3

    .line 138
    .local v3, "previousViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->resolveHeaderViews()V

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateInvertHelper()V

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateTransformedTypes()V

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->addRemainingTransformTypes()V

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateCropToPaddingForImageViews()V

    .line 143
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 144
    .local v2, "notification":Landroid/app/Notification;
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 147
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 151
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getAllTransformingViews()Landroid/util/ArraySet;

    move-result-object v0

    .line 152
    .local v0, "currentViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 153
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 154
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 155
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->resetTransformedView(Landroid/view/View;)V

    .line 152
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 134
    .end local v0    # "currentViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    .end local v1    # "i":I
    .end local v2    # "notification":Landroid/app/Notification;
    .end local v3    # "previousViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 158
    .restart local v0    # "currentViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    .restart local v1    # "i":I
    .restart local v2    # "notification":Landroid/app/Notification;
    .restart local v3    # "previousViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    :cond_2
    return-void
.end method

.method protected resolveHeaderViews()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020287

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderText:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v1, 0x102023b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/NotificationExpandButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationExpandButton;->setLabeledBy(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020380

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->resolveColor(Landroid/widget/ImageView;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mColor:I

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v1, 0x102032f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/NotificationHeaderView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mColor:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->setColor(I)V

    .line 118
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 9
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mDark:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mDarkInitialized:Z

    if-eqz v0, :cond_0

    .line 212
    return-void

    .line 214
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    .line 215
    if-eqz p2, :cond_2

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/systemui/ViewInvertHelper;->fade(ZJ)V

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getOriginalIconColor()I

    move-result v0

    .line 224
    const/4 v1, 0x1

    .line 223
    if-eq v0, v1, :cond_3

    const/4 v7, 0x1

    .line 226
    .local v7, "hadColorFilter":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    xor-int/lit8 v6, v7, 0x1

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->setImageDark(Landroid/widget/ImageView;ZZJZ)V

    .line 228
    .end local v7    # "hadColorFilter":Z
    :cond_1
    return-void

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ViewInvertHelper;->update(Z)V

    goto :goto_0

    .line 223
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "hadColorFilter":Z
    goto :goto_1
.end method

.method public setIsChildInGroup(Z)V
    .locals 1
    .param p1, "isChildInGroup"    # Z

    .prologue
    .line 268
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 269
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformLowPriorityTitle:Z

    .line 270
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setVisible(Z)V

    .line 276
    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 1
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    .line 259
    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V
    .locals 1
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 264
    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V
    .locals 1
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 254
    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    .line 249
    return-void
.end method

.method public updateExpandability(ZLandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "expandable"    # Z
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/NotificationExpandButton;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz p1, :cond_1

    .end local p2    # "onClickListener":Landroid/view/View$OnClickListener;
    :goto_1
    invoke-virtual {v0, p2}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    return-void

    .line 232
    .restart local p2    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 233
    :cond_1
    const/4 p2, 0x0

    goto :goto_1
.end method

.method protected updateInvertHelper()V
    .locals 3

    .prologue
    .line 191
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v2}, Lcom/android/systemui/ViewInvertHelper;->clearTargets()V

    .line 192
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 193
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v2, v1}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 194
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    if-eq v0, v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/ViewInvertHelper;->addTarget(Landroid/view/View;)V

    .line 192
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected updateTransformedTypes()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->reset()V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 203
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIsLowPriority:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 205
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderText:Landroid/widget/TextView;

    .line 204
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 207
    :cond_0
    return-void
.end method
