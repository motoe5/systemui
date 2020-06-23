.class public Lcom/android/systemui/statusbar/policy/KeyButtonView;
.super Landroid/widget/ImageView;
.source "KeyButtonView.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyButtonView$1;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCheckLongPress:Ljava/lang/Runnable;

.field private mCode:I

.field private mContentDescriptionRes:I

.field private mDownTime:J

.field private mGestureAborted:Z

.field private mLongClicked:Z

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mPlaySounds:Z

.field private final mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

.field private mSupportsLongpress:Z

.field private mTouchSlop:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/KeyButtonView;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/KeyButtonView;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/KeyButtonView;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/KeyButtonView;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    .line 67
    const-class v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/logging/MetricsLogger;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 69
    new-instance v2, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    .line 93
    sget-object v2, Lcom/android/systemui/R$styleable;->KeyButtonView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    .line 98
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    .line 99
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPlaySounds:Z

    .line 101
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 102
    .local v1, "value":Landroid/util/TypedValue;
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContentDescriptionRes:I

    .line 106
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setClickable(Z)V

    .line 109
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    .line 110
    const-string/jumbo v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    .line 112
    new-instance v2, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-direct {v2, p1, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    .line 113
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 114
    return-void
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGestureAborted:Z

    .line 278
    return-void
.end method

.method public loadAsync(Landroid/graphics/drawable/Icon;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 127
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/drawable/Icon;

    .line 137
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 127
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 138
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 144
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContentDescriptionRes:I

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContentDescriptionRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 152
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v0, :cond_1

    .line 153
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 154
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x20

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 159
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v7, 0x20

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 189
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 190
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGestureAborted:Z

    .line 192
    :cond_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGestureAborted:Z

    if-eqz v6, :cond_1

    .line 193
    return v4

    .line 196
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 247
    :goto_0
    return v5

    .line 198
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    .line 199
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    .line 200
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 201
    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v6, :cond_2

    .line 202
    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    invoke-virtual {p0, v4, v4, v6, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    .line 207
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    .line 208
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 209
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performHapticFeedback(I)Z

    goto :goto_1

    .line 212
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 213
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 214
    .local v3, "y":I
    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    neg-int v6, v6

    if-lt v2, v6, :cond_3

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_3

    .line 216
    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    neg-int v6, v6

    if-lt v3, v6, :cond_3

    .line 217
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_3

    move v4, v5

    .line 214
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    goto :goto_0

    .line 220
    .end local v2    # "x":I
    .end local v3    # "y":I
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 221
    iget v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v4, :cond_4

    .line 222
    invoke-virtual {p0, v5, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 224
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 227
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isPressed()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    xor-int/lit8 v1, v6, 0x1

    .line 228
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 229
    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v6, :cond_8

    .line 230
    if-eqz v1, :cond_7

    .line 231
    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 232
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 243
    :cond_5
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 227
    :cond_6
    const/4 v1, 0x0

    .local v1, "doIt":Z
    goto :goto_2

    .line 234
    .end local v1    # "doIt":Z
    :cond_7
    invoke-virtual {p0, v5, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    goto :goto_3

    .line 238
    :cond_8
    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v4, :cond_5

    .line 239
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v4, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 240
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    goto :goto_3

    .line 196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    .line 164
    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->jumpDrawablesToCurrentState()V

    .line 167
    :cond_0
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v0, :cond_0

    .line 172
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    .line 173
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 174
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 175
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    .line 176
    return v3

    .line 177
    :cond_0
    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v0, :cond_1

    .line 178
    const/16 v0, 0x80

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 179
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 180
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 181
    return v3

    .line 183
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public playSoundEffect(I)V
    .locals 2
    .param p1, "soundConstant"    # I

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPlaySounds:Z

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->playSoundEffect(II)V

    .line 253
    return-void
.end method

.method public sendEvent(II)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "flags"    # I

    .prologue
    .line 256
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    .line 257
    return-void
.end method

.method sendEvent(IIJ)V
    .locals 17
    .param p1, "action"    # I
    .param p2, "flags"    # I
    .param p3, "when"    # J

    .prologue
    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v4, Landroid/metrics/LogMaker;

    const/16 v5, 0x3a3

    invoke-direct {v4, v5}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 261
    const/4 v5, 0x4

    .line 260
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 262
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    .line 260
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 263
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3a5

    .line 260
    invoke-virtual {v4, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 264
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3a4

    .line 260
    invoke-virtual {v4, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 265
    move/from16 v0, p2

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    const/4 v10, 0x1

    .line 266
    .local v10, "repeatCount":I
    :goto_0
    new-instance v3, Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    .line 268
    or-int/lit8 v2, p2, 0x8

    or-int/lit8 v14, v2, 0x40

    .line 267
    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 269
    const/16 v15, 0x101

    move-wide/from16 v6, p3

    move/from16 v8, p1

    .line 266
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 270
    .local v3, "ev":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    .line 271
    const/4 v4, 0x0

    .line 270
    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 272
    return-void

    .line 265
    .end local v3    # "ev":Landroid/view/KeyEvent;
    .end local v10    # "repeatCount":I
    :cond_0
    const/4 v10, 0x0

    .restart local v10    # "repeatCount":I
    goto :goto_0
.end method

.method public setCarMode(Z)V
    .locals 0
    .param p1, "carMode"    # Z

    .prologue
    .line 301
    return-void
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    .line 118
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 2
    .param p1, "darkIntensity"    # F

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 283
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 288
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->invalidate()V

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setDarkIntensity(F)V

    .line 291
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 124
    return-void
.end method

.method public setVertical(Z)V
    .locals 0
    .param p1, "vertical"    # Z

    .prologue
    .line 296
    return-void
.end method
