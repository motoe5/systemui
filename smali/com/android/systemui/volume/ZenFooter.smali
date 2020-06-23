.class public Lcom/android/systemui/volume/ZenFooter;
.super Landroid/widget/LinearLayout;
.source "ZenFooter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/ZenFooter$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mEndNowButton:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mSummaryLine1:Landroid/widget/TextView;

.field private mSummaryLine2:Landroid/widget/TextView;

.field private mZen:I

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field private mZenIntroduction:Landroid/view/View;

.field private mZenIntroductionConfirm:Landroid/view/View;

.field private mZenIntroductionMessage:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/ZenFooter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/ZenFooter;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenFooter;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->confirmZenIntroduction()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/volume/ZenFooter;Landroid/service/notification/ZenModeConfig;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenFooter;
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenFooter;->setConfig(Landroid/service/notification/ZenModeConfig;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/volume/ZenFooter;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/ZenFooter;
    .param p1, "zen"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenFooter;->setZen(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/ZenFooter;->TAG:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    .line 167
    new-instance v1, Lcom/android/systemui/volume/ZenFooter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenFooter$1;-><init>(Lcom/android/systemui/volume/ZenFooter;)V

    iput-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    .line 61
    new-instance v1, Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    .line 62
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 63
    .local v0, "layoutTransition":Landroid/animation/LayoutTransition;
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 65
    return-void
.end method

.method private confirmZenIntroduction()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "DndConfirmedAlarmIntroduction"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->updateIntroduction()V

    .line 126
    return-void
.end method

.method private isZenAlarms()Z
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZenNone()Z
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZenPriority()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 129
    iget v1, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setConfig(Landroid/service/notification/ZenModeConfig;)V
    .locals 1
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    .line 121
    return-void
.end method

.method private setZen(I)V
    .locals 1
    .param p1, "zen"    # I

    .prologue
    .line 111
    iget v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    if-ne v0, p1, :cond_0

    return-void

    .line 112
    :cond_0
    iput p1, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->updateIntroduction()V

    .line 115
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->removeCallback(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/systemui/statusbar/policy/ZenModeController;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mEndNowButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/volume/ZenFooter$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/ZenFooter$3;-><init>(Lcom/android/systemui/volume/ZenFooter;Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    .line 99
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 100
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 101
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Ljava/lang/Object;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->updateIntroduction()V

    .line 104
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ConfigurableTexts;->update()V

    .line 165
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 70
    const v0, 0x7f0a02ea

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mIcon:Landroid/widget/ImageView;

    .line 71
    const v0, 0x7f0a02eb

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine1:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0a02ec

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine2:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0a02e8

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mEndNowButton:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0a0304

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenIntroduction:Landroid/view/View;

    .line 75
    const v0, 0x7f0a0307

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenIntroductionMessage:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mZenIntroductionMessage:Landroid/widget/TextView;

    const v2, 0x7f110581

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    .line 77
    const v0, 0x7f0a0305

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenIntroductionConfirm:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenIntroductionConfirm:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/volume/ZenFooter$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenFooter$2;-><init>(Lcom/android/systemui/volume/ZenFooter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenIntroduction:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->shouldShowIntroduction()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;)I

    .line 86
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;)I

    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mEndNowButton:Landroid/widget/TextView;

    const v2, 0x7f11052e

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    .line 88
    return-void
.end method

.method public shouldShowIntroduction()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    .line 155
    const-string/jumbo v3, "DndConfirmedAlarmIntroduction"

    .line 154
    invoke-static {v2, v3, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 156
    .local v0, "confirmed":Z
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenAlarms()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public update()V
    .locals 6

    .prologue
    .line 141
    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenNone()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0800e3

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenPriority()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f110227

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine1:Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 149
    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 150
    iget-object v4, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getCurrentUser()I

    move-result v4

    const/4 v5, 0x1

    .line 149
    invoke-static {v2, v3, v4, v5}, Landroid/service/notification/ZenModeConfig;->getConditionSummary(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZ)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "line2":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine2:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 152
    return-void

    .line 141
    .end local v1    # "line2":Ljava/lang/CharSequence;
    :cond_0
    const v2, 0x7f0800e0

    goto :goto_0

    .line 144
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenAlarms()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f110222

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "line1":Ljava/lang/String;
    goto :goto_1

    .line 145
    .end local v0    # "line1":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenNone()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f110224

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "line1":Ljava/lang/String;
    goto :goto_1

    .line 146
    .end local v0    # "line1":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .local v0, "line1":Ljava/lang/String;
    goto :goto_1
.end method

.method public updateIntroduction()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenIntroduction:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->shouldShowIntroduction()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 161
    return-void
.end method
