.class public Lcom/android/systemui/statusbar/NotificationSnooze;
.super Landroid/widget/LinearLayout;
.source "NotificationSnooze.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCollapsedHeight:I

.field private mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

.field private mDivider:Landroid/view/View;

.field private mExpandAnimation:Landroid/animation/AnimatorSet;

.field private mExpandButton:Landroid/widget/ImageView;

.field private mExpanded:Z

.field private mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

.field private mSelectedOptionText:Landroid/widget/TextView;

.field private mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

.field private mSnoozeOptionContainer:Landroid/view/ViewGroup;

.field private mSnoozeOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;",
            ">;"
        }
    .end annotation
.end field

.field private mSnoozing:Z

.field private mUndoButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method private animateSnoozeOptions(Z)V
    .locals 11
    .param p1, "show"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 175
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 178
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDivider:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    .line 179
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDivider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    aput v2, v7, v8

    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    aput v2, v7, v9

    .line 178
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 180
    .local v0, "dividerAnim":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v10, [F

    .line 181
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    if-eqz p1, :cond_2

    :goto_1
    aput v3, v6, v9

    .line 180
    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 182
    .local v1, "optionAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    .line 183
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v10, [Landroid/animation/Animator;

    aput-object v0, v3, v8

    aput-object v1, v3, v9

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 184
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 185
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_3

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 186
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 187
    return-void

    .end local v0    # "dividerAnim":Landroid/animation/ObjectAnimator;
    .end local v1    # "optionAnim":Landroid/animation/ObjectAnimator;
    :cond_1
    move v2, v4

    .line 179
    goto :goto_0

    .restart local v0    # "dividerAnim":Landroid/animation/ObjectAnimator;
    :cond_2
    move v3, v4

    .line 181
    goto :goto_1

    .line 185
    .restart local v1    # "optionAnim":Landroid/animation/ObjectAnimator;
    :cond_3
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_2
.end method

.method private createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    .locals 8
    .param p1, "descriptionResId"    # I
    .param p2, "minutes"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 130
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "description":Ljava/lang/String;
    const v4, 0x7f110481

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "resultText":Ljava/lang/String;
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 133
    .local v3, "string":Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 134
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    .line 133
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 135
    new-instance v4, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v6, p2, v5, v3}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;-><init>(Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v4
.end method

.method private createOptionViews()V
    .locals 7

    .prologue
    .line 139
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 141
    const-string/jumbo v5, "layout_inflater"

    .line 140
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 142
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 143
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 145
    .local v2, "option":Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    .line 144
    const v5, 0x7f0d00ac

    .line 145
    const/4 v6, 0x0

    .line 144
    invoke-virtual {v1, v5, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 146
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 147
    iget-object v4, v2, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->description:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 149
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    .end local v2    # "option":Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    .end local v3    # "tv":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private getDefaultSnoozeOptions()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;>;"
    const v1, 0x7f11047c

    const/16 v2, 0xf

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/NotificationSnooze;->createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    const v1, 0x7f11047f

    const/16 v2, 0x1e

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/NotificationSnooze;->createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    const v1, 0x7f11047d

    const/16 v2, 0x3c

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/NotificationSnooze;->createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    const v1, 0x7f11047e

    const/16 v2, 0x78

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/NotificationSnooze;->createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    return-object v0
.end method

.method private hideSelectedOption()V
    .locals 5

    .prologue
    .line 154
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 155
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 156
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 157
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-ne v3, v4, :cond_0

    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 159
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 2
    .param p1, "option"    # Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSelectedOptionText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->confirmation:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->showSnoozeOptions(Z)V

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->hideSelectedOption()V

    .line 194
    return-void
.end method

.method private showSnoozeOptions(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 162
    if-eqz p1, :cond_1

    const v0, 0x108032d

    .line 164
    .local v0, "drawableId":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpanded:Z

    if-eq v1, p1, :cond_0

    .line 166
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpanded:Z

    .line 167
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationSnooze;->animateSnoozeOptions(Z)V

    .line 168
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->onHeightChanged()V

    .line 172
    :cond_0
    return-void

    .line 163
    .end local v0    # "drawableId":I
    :cond_1
    const v0, 0x1080364

    .restart local v0    # "drawableId":I
    goto :goto_0
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpanded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mCollapsedHeight:I

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    .line 238
    return-object p0
.end method

.method public handleCloseControls(ZZ)Z
    .locals 4
    .param p1, "save"    # Z
    .param p2, "force"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 248
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpanded:Z

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationSnooze;->showSnoozeOptions(Z)V

    .line 251
    return v3

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-eqz v0, :cond_1

    .line 254
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozing:Z

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->snooze(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    .line 256
    return v3

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    .line 260
    return v1
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpanded:Z

    return v0
.end method

.method public isLeavebehind()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 198
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v8, :cond_0

    .line 199
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 202
    .local v2, "id":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 203
    .local v4, "tag":Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    if-eqz v4, :cond_1

    .line 204
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    .line 222
    :goto_0
    return-void

    .line 205
    :cond_1
    const v8, 0x7f0a01ee

    if-ne v2, v8, :cond_2

    .line 207
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpanded:Z

    xor-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/NotificationSnooze;->showSnoozeOptions(Z)V

    goto :goto_0

    .line 210
    :cond_2
    iput-object v9, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 211
    new-array v3, v12, [I

    .line 212
    .local v3, "parentLoc":[I
    new-array v5, v12, [I

    .line 213
    .local v5, "targetLoc":[I
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v8, v3}, Lcom/android/systemui/statusbar/NotificationGuts;->getLocationOnScreen([I)V

    .line 214
    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v0, v8, 0x2

    .line 216
    .local v0, "centerX":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v1, v8, 0x2

    .line 217
    .local v1, "centerY":I
    aget v8, v5, v10

    aget v9, v3, v10

    sub-int/2addr v8, v9

    add-int v6, v8, v0

    .line 218
    .local v6, "x":I
    aget v8, v5, v11

    aget v9, v3, v11

    sub-int/2addr v8, v9

    add-int v7, v8, v1

    .line 219
    .local v7, "y":I
    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/NotificationSnooze;->showSnoozeOptions(Z)V

    .line 220
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v8, v6, v7, v10, v10}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(IIZZ)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07029b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mCollapsedHeight:I

    .line 74
    const v0, 0x7f0a01ee

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v0, 0x7f0a0282

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSelectedOptionText:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0a02cc

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mUndoButton:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mUndoButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v0, 0x7f0a00d5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandButton:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f0a00bd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDivider:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 81
    const v0, 0x7f0a0283

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->getDefaultSnoozeOptions()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->createOptionViews()V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    .line 90
    return-void
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0
    .param p1, "guts"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 244
    return-void
.end method

.method public setSnoozeListener(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    .line 112
    return-void
.end method

.method public setSnoozeOptions(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "snoozeList":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/SnoozeCriterion;>;"
    if-nez p1, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->getDefaultSnoozeOptions()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    .line 98
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 99
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 100
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/SnoozeCriterion;

    .line 101
    .local v2, "sc":Landroid/service/notification/SnoozeCriterion;
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    new-instance v4, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-virtual {v2}, Landroid/service/notification/SnoozeCriterion;->getExplanation()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2}, Landroid/service/notification/SnoozeCriterion;->getConfirmation()Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v2, v7, v5, v6}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;-><init>(Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v2    # "sc":Landroid/service/notification/SnoozeCriterion;
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->createOptionViews()V

    .line 104
    return-void
.end method

.method public setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 116
    return-void
.end method

.method public willBeRemoved()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozing:Z

    return v0
.end method
