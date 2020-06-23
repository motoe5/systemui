.class public Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
.super Ljava/lang/Object;
.source "StatusBarIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconManager"
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mGroup:Landroid/view/ViewGroup;

.field protected mIconHPadding:I

.field protected final mIconSize:I

.field protected mIsSupportNewSpec:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsSupportNewSpec:Z

    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    .line 122
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    const v1, 0x105014c

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIconSize:I

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsSupportNewSpec:Z

    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsSupportNewSpec:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 129
    const v1, 0x7f0702b6

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIconHPadding:I

    .line 135
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 132
    const v1, 0x7f0702af

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIconHPadding:I

    goto :goto_0
.end method

.method private setHeightAndCenter(Landroid/widget/ImageView;I)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "height"    # I

    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 188
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 189
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 190
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 192
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    return-void
.end method


# virtual methods
.method protected addIcon(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 3
    .param p1, "index"    # I
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "blocked"    # Z
    .param p4, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 144
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateStatusBarIconView(Ljava/lang/String;Z)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    .line 145
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 146
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 147
    return-object v0
.end method

.method protected destroy()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 168
    return-void
.end method

.method protected onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 157
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 158
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIconSize:I

    const/4 v2, -0x2

    .line 157
    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 159
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsSupportNewSpec:Z

    if-eqz v1, :cond_0

    .line 160
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIconHPadding:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIconHPadding:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 162
    :cond_0
    return-object v0
.end method

.method protected onCreateStatusBarIconView(Ljava/lang/String;Z)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 3
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "blocked"    # Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 152
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V

    return-object v0
.end method

.method protected onIconAdded(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "blocked"    # Z
    .param p4, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 139
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->addIcon(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 140
    return-void
.end method

.method protected onIconExternal(II)V
    .locals 2
    .param p1, "viewIndex"    # I
    .param p2, "height"    # I

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 172
    .local v0, "imageView":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 173
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 174
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->setHeightAndCenter(Landroid/widget/ImageView;I)V

    .line 175
    return-void
.end method

.method protected onRemoveIcon(I)V
    .locals 1
    .param p1, "viewIndex"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 197
    return-void
.end method

.method public onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .param p1, "viewIndex"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 201
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 202
    return-void
.end method
